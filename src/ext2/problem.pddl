(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r1 - rover
		s1 - supply
		p1 p2 p3 p4 - person
		b1 b2 b3 - warehouse
		b4 b5 b6 - settlement
	)

	; Init
	(:init
		; Rovers
		(= (fuel-used) 0)

		(parked r1 b1)
		(= (supplies r1) 0)
		(= (fuel r1) 5)

		; Supplies
		(is-in s1 b1)

		; Staff
		(is-in p1 b4)
		(is-in p2 b4)
		(is-in p3 b4)
		(is-in p4 b4)

		; Requests
		(needs p1 b5)
		(needs p2 b5)
		(needs p3 b5)
		(needs p4 b5)
		(needs s1 b2)
		(needs s1 b3)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)
)
