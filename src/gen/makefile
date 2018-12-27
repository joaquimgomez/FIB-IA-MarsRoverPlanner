all: clean build run

run: ./gen
	./gen

build:
	g++ -O2 --std=c++11 -o gen generator.cpp

clean:
	rm -f ./gen

reset:
	rm -f ./gen *.pddl
