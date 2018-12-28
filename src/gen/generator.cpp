
#include <iostream>
#include <fstream>
#include <set>
#include <vector>
#include <algorithm>
#include <utility>      // std::pair, std::make_pair
#include <string>       // std::string

using namespace std;

struct Info {
	int rovers;
	int supplies;
	int people;
	int settlements;
	int warehouses;
};

int random(int min, int max) {
	return (rand() % (max - min)) + min;
}

ofstream get_file() {
	string filename;

	cout << "Enter the name of the file that you want to create / open:" << endl;
	cin >> filename;
	cout << endl;
	if (filename.size() <= 5 || filename.substr(filename.size() - 5) != ".pddl") {
		filename += ".pddl";
	}

	ofstream file (filename, fstream::out | fstream::trunc);
	return file;
}

void begin_problem(ofstream& file) {
	file << "(define (problem rovers)" << endl;
	file << endl;
	file << "	; Domain" << endl;
	file << "	(:domain mars)" << endl;
	file << endl;
}

void end_problem(ofstream& file) {
	file << ")" << endl;
	file << endl;
}

Info add_objects(ofstream& file) {
	Info problem_info;

	cout << "How many rovers?" << endl;
	cin >> problem_info.rovers;
	cout << endl;

	cout << "How many supplies?" << endl;
	cin >> problem_info.supplies;
	cout << endl;

	cout << "How many people?" << endl;
	cin >> problem_info.people;
	cout << endl;

	cout << "How many settlements?" << endl;
	cin >> problem_info.settlements;
	cout << endl;

	cout << "How many warehouses?" << endl;
	cin >> problem_info.warehouses;
	cout << endl;

	file << "	; Objects" << endl;
	file << "	(:objects" << endl;

	file << "		";
	for (int i = 0; i < problem_info.rovers; i++) {
		file << "r" << i << " ";
	}
	if (problem_info.rovers > 0) {
		file << "- rover" << endl;
	}

	file << "		";
	for (int i = 0; i < problem_info.supplies; i++) {
		file << "s" << i << " ";
	}
	if (problem_info.supplies > 0) {
		file << "- supply" << endl;
	}

	file << "		";
	for (int i = 0; i < problem_info.people; i++) {
		file << "p" << i << " ";
	}
	if (problem_info.people > 0) {
		file << "- person" << endl;
	}

	file << "		";
	for (int i = 0; i < problem_info.settlements; i++) {
		file << "b" << i << " ";
	}
	if (problem_info.settlements > 0) {
		file << "- settlement" << endl;
	}

	file << "		";
	for (int i = 0; i < problem_info.warehouses; i++) {
		file << "b" << (problem_info.settlements + i) << " ";
	}
	if (problem_info.warehouses > 0) {
		file << "- warehouse" << endl;
	}

	file << "	)" << endl;
	file << endl;
	return problem_info;
}

set< pair<string, string> > mix(Info info) {
	set< pair<string, string> > unio = {};

	for (int p = 0; p < info.people; p++) {
		for (int b = 0; b < info.settlements; b++) {
			unio.insert(make_pair("p" + to_string(p), "b" + to_string(b)));
		}
	}

	for (int s = 0; s < info.supplies; s++) {
		for (int b = 0; b < info.warehouses; b++) {
			unio.insert(make_pair("s" + to_string(s), "b" + to_string(b + info.settlements)));
		}
	}

	return unio;
}

void init(ofstream& file, Info problem_info, int ext) {
	int requests;
	int min_fuel = 0;
	int max_fuel = 0;

	cout << "How many requests ( >= " << (problem_info.people + problem_info.supplies) << " )" << endl;
	cin >> requests;
	requests = max(problem_info.people + problem_info.supplies, requests);
	cout << endl;

	if (ext >= 2) {
		cout << "Minimum amount of fuel?" << endl;
		cin >> min_fuel;
		cout << endl;

		cout << "Maximum amount of fuel?" << endl;
		cin >> max_fuel;
		cout << endl;
	}

	file << "	; Init" << endl;
	file << "	(:init" << endl;

	// Rovers
	file << "		; Rovers" << endl;
	if (ext >= 2) {
		file << "		(= (fuel-used) 0)" << endl;
	}
	if (ext >= 3) {
		file << "		(= (violations) 0)" << endl;
	}
	if (ext >= 2) {
		file << endl;
	}
	for (int i = 0; i < problem_info.rovers; i++) {
		int base = random(0, problem_info.settlements + problem_info.warehouses);
		file << "		(parked r" << i << " b" << base << ")" << endl;
		if (ext >= 1) {
			file << "		(= (supplies r" << i << ") 0)" << endl;
		}
		if (ext >= 2) {
			int fuel = random(max(0, min_fuel), max(1, max_fuel + 1));
			file << "		(= (fuel r" << i << ") " << fuel << ")" << endl;
		}
		file << endl;
	}

	// Supplies
	file << "		; Supplies" << endl;
	for (int i = 0; i < problem_info.supplies; i++) {
		int base = random(0, problem_info.warehouses);
		file << "		(is-in s" << i << " b" << (base + problem_info.settlements) << ")" << endl;
	}
	file << endl;

	// Staff
	file << "		; Staff" << endl;
	for (int i = 0; i < problem_info.people; i++) {
		int base = random(0, problem_info.settlements);
		file << "		(is-in p" << i << " b" << base << ")" << endl;
	}
	file << endl;

	// Requests
	auto combinations = mix(problem_info);
	for (int i = 0; i < requests; i++)
	{
		if (combinations.empty()) {
			exit(-1);
		}
		vector< pair<string, string> > aux(combinations.begin(), combinations.end());
		random_shuffle(aux.begin(), aux.end());
		auto combination = *aux.begin();
		if (ext <= 2) {
			file << "		(needs " << combination.first << " " << combination.second << ")" << endl;
		}
		else {
			int priority = random(1, 4);
			file << "		(needs-p" << priority << " " << combination.first << " " << combination.second << ")" << endl;
		}
		combinations.erase(combination);
	}
	file << "	)" << endl;
	file << endl;
}

void goal(ofstream& file) {
	file << "	; Goal" << endl;
	file << "	(:goal" << endl;
	file << "		(forall (?c - cargo)" << endl;
	file << "			(served ?c)" << endl;
	file << "		)" << endl;
	file << "	)" << endl;
	file << endl;
}

void metric(ofstream& file, Info problem_info, int ext) {
	string s;
	bool fuel = false;
	bool priorities = false;
	int weight_fuel = 0;
	int weight_priority = 0;
	
	if (ext == 3) {
		cout << "Do you want to optimize priorities? (yes / no)" << endl;
		cin >> s;
		cout << endl;
		priorities = s.front() == 'y';
	}
	
	cout << "Do you want to optimize fuel? (yes / no)" << endl;
	cin >> s;
	cout << endl;
	fuel = s.front() == 'y';
		
	if (ext == 2 && fuel) {
		file << "	; Metric" << endl;
		file << "	(:metric minimize (fuel-used))" << endl;
	}
	else if (ext == 3 && priorities && fuel) {
		cout << "Enter the weight of the priority criteria: " << endl;
		cin >> weight_priority;
		cout << endl;
		
		cout << "Enter the weight of the fuel criteria: " << endl;
		cin >> weight_fuel;
		cout << endl;
		
		file << "	; Metric" << endl;
		file << "	(:metric minimize (+ (* (violations) " << weight_priority << ") (* (fuel-used) " << weight_fuel << ")))" << endl;
	}
	else if (ext == 3 && priorities) {
		file << "	; Metric" << endl;
		file << "	(:metric minimize (violations))" << endl;
	}
}

void basic() {
	auto file = get_file();
	begin_problem(file);
	auto info = add_objects(file);
	init(file, info, 0);
	goal(file);
	end_problem(file);
	file.close();
}

void ext1() {
	auto file = get_file();
	begin_problem(file);
	auto info = add_objects(file);
	init(file, info, 1);
	goal(file);
	end_problem(file);
	file.close();
}

void ext2() {
	auto file = get_file();
	begin_problem(file);
	auto info = add_objects(file);
	init(file, info, 2);
	goal(file);
	metric(file, info, 2);
	end_problem(file);
	file.close();
}

void ext3() {
	auto file = get_file();
	begin_problem(file);
	auto info = add_objects(file);
	init(file, info, 3);
	goal(file);
	metric(file, info, 3);
	end_problem(file);
	file.close();
}

int main() {

	srand((unsigned int)time(0));

	// which problem
	int extension = -1;

	do {
		cout << endl << "Which version do you want to generate?" << endl;
		cout << "(-1 -> exit / 0 -> basic / 1 -> ext1 / 2 -> ext2 / 3 -> ext3)" << endl;
		cin >> extension;
		cout << endl;

		switch (extension) {
			case -1:
				exit(0);
				break;

			case 0:
				basic();
				break;

			case 1:
				ext1();
				break;

			case 2:
				ext2();
				break;

			case 3:
				ext3();
				break;

			default:
				extension = -1;
				break;
		}

	} while (extension == -1);
}
