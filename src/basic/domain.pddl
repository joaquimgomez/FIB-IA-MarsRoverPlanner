(define (domain mars)

	; Requirements
	(:requirements :adl :typing :fluents)

	; Types
	(:types
		rover - place
		staff - cargo
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

	; Actions

	(:action pick		; (cargo) base -> rover
		:parameters (?c - cargo ?b - base ?r - rover)
		:precondition (and
			(parked ?r ?b)
			(is-in ?c ?b)
		)
	  :effect (and
			(not (is-in ?c ?b))
			(is-in ?c ?r)
		)
	)

	(:action leave		; (cargo) rover -> base
	  :parameters (?c - cargo ?r - rover ?b - base)
	  :precondition (and
			(parked ?r ?b)
			(is-in ?c ?r)
		)
		:effect (and
			(not (is-in ?c ?r))
			(is-in ?c ?b)
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
