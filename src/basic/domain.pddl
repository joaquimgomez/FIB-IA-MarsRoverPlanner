(define (domain mars)

	; Requirements
	(:requirements :typing)

	; Types
	(:types
		rover - place
		person - cargo
		supply - cargo
		settlement - base
		warehouse - base
		base - place
	)

	; Predicates
	(:predicates
		(parked ?c - rover ?b - base)
		(is-in ?c - cargo ?b - place)
		(needs ?c - cargo ?b - base)
		(served ?c - cargo)
	)

	; Actions

	(:action pick-person		; (person) base -> rover
		:parameters (?p - person ?b - settlement ?r - rover)
		:precondition (and
			(parked ?r ?b)
			(is-in ?p ?b)
		)
	  :effect (and
			(not (is-in ?p ?b))
			(is-in ?p ?r)
		)
	)

	(:action pick-supply		; (supply) base -> rover
		:parameters (?s - supply ?b - warehouse ?r - rover)
		:precondition (and
			(parked ?r ?b)
			(is-in ?s ?b)
		)
	  :effect (and
			(not (is-in ?s ?b))
			(is-in ?s ?r)
		)
	)

	(:action leave-person		; (person) rover -> base
	  :parameters (?p - person ?r - rover ?b - settlement)
	  :precondition (and
			(parked ?r ?b)
			(is-in ?p ?r)
		)
		:effect (and
			(not (is-in ?p ?r))
			(is-in ?p ?b)
		)
	)

	(:action leave-supply		; (supply) rover -> base
	  :parameters (?s - supply ?r - rover ?b - warehouse)
	  :precondition (and
			(parked ?r ?b)
			(is-in ?s ?r)
		)
		:effect (and
			(not (is-in ?s ?r))
			(is-in ?s ?b)
		)
	)

	(:action move		; (rover) base -> base
	  :parameters (?r - rover ?b1 - base ?b2 - base)
	  :precondition (and
			(parked ?r ?b1)
		)
	  :effect (and
			(not (parked ?r ?b1))
			(parked ?r ?b2)
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
