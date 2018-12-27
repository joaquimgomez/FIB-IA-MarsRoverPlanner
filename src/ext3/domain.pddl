(define (domain mars)

	; Requirements
	(:requirements :adl :typing :fluents :conditional-effects)

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
		(needs-p1 ?c - cargo ?b - base)
		(needs-p2 ?c - cargo ?b - base)
		(needs-p3 ?c - cargo ?b - base)
		(served ?c - cargo)
	)

	; Functions
	(:functions
		(supplies ?r - rover)
		(fuel ?r - rover)
		(fuel-used)
		(violations)
	)

	; Actions

	(:action pick-person		; (person) base -> rover
		:parameters (?p - person ?b - settlement ?r - rover)
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
		:parameters (?s - supply ?b - warehouse ?r - rover)
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
	  :parameters (?p - person ?r - rover ?b - settlement)
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
	  :parameters (?s - supply ?r - rover ?b - warehouse)
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

	(:action perform-p1	; (cargo) stay in base
	  :parameters (?c - cargo ?b - base)
	  :precondition (and
			(is-in ?c ?b)
			(needs-p1 ?c ?b)
		)
	  :effect (and
			(not (is-in ?c ?b))
			(not (needs-p1 ?c ?b))
			(served ?c)
			(forall (?caux - cargo ?baux - base)
				(when (needs-p2 ?caux ?baux)
					(increase (violations) 1)
				)
			)
			(forall (?caux - cargo ?baux - base)
				(when (needs-p3 ?caux ?baux)
					(increase (violations) 1)
				)
			)
		)
	)

	(:action perform-p2	; (cargo) stay in base
	  :parameters (?c - cargo ?b - base)
	  :precondition (and
			(is-in ?c ?b)
			(needs-p2 ?c ?b)
		)
	  :effect (and
			(not (is-in ?c ?b))
			(not (needs-p2 ?c ?b))
			(served ?c)
			(forall (?caux - cargo ?baux - base)
				(when (needs-p3 ?caux ?baux)
					(increase (violations) 1)
				)
			)
		)
	)

	(:action perform-p3	; (cargo) stay in base
	  :parameters (?c - cargo ?b - base)
	  :precondition (and
			(is-in ?c ?b)
			(needs-p3 ?c ?b)
		)
	  :effect (and
			(not (is-in ?c ?b))
			(not (needs-p3 ?c ?b))
			(served ?c)
		)
	)
)
