(define (domain mars)

	; Requirements
	(:requirements :adl :typing :fluents)

	; Types
	(:types
		rover - place
		person - cargo
		supply - cargo
		base - place
	)

	; Predicates
	(:predicates
		(parked ?c - rover ?b - base)
	  (is-in ?c - cargo ?b - place)
		(needs ?c - cargo ?b - base)
		(served ?c - cargo)
	)

	; Functions
	(:functions
		(supplies ?r - rover)
		(fuel ?r - rover)
		(fuel-used)
	)

	; Actions

	(:action pick-person		; (person) base -> rover
		:parameters (?p - person ?b - base ?r - rover)
		:precondition (and
			(parked ?r ?b)
			(is-in ?p ?b)
			(<= (supplies ?r) 1)
		)
	  :effect (and
			(not (is-in ?p ?b))
			(is-in ?p ?r)
			(increase (supplies ?r) 1)
		)
	)

	(:action pick-supply		; (supply) base -> rover
		:parameters (?s - supply ?b - base ?r - rover)
		:precondition (and
			(parked ?r ?b)
			(is-in ?s ?b)
			(<= (supplies ?r) 0)
		)
	  :effect (and
			(not (is-in ?s ?b))
			(is-in ?s ?r)
			(increase (supplies ?r) 2)
		)
	)

	(:action leave-person		; (person) rover -> base
	  :parameters (?p - person ?r - rover ?b - base)
	  :precondition (and
			(parked ?r ?b)
			(is-in ?p ?r)
		)
		:effect (and
			(not (is-in ?p ?r))
			(is-in ?p ?b)
			(decrease (supplies ?r) 1)
		)
	)

	(:action leave-supply		; (supply) rover -> base
	  :parameters (?s - supply ?r - rover ?b - base)
	  :precondition (and
			(parked ?r ?b)
			(is-in ?s ?r)
		)
		:effect (and
			(not (is-in ?s ?r))
			(is-in ?s ?b)
			(decrease (supplies ?r) 2)
		)
	)

	(:action move		; (rover) base -> base
	  :parameters (?r - rover ?b1 - base ?b2 - base)
	  :precondition (and
			(parked ?r ?b1)
			(> (fuel ?r) 0)
		)
	  :effect (and
			(not (parked ?r ?b1))
			(parked ?r ?b2)
			(decrease (fuel ?r) 1)
			(increase (fuel-used) 1)
		)
	)

	(:action perform	; (cargo) stay in base
	  :parameters (?c - cargo ?b - base)
	  :precondition (and
			(is-in ?c ?b)
			(needs ?c ?b)
		)
	  :effect (and
			(not (is-in ?c ?b))
			(not (needs ?c ?b))
			(served ?c)
		)
	)
)
