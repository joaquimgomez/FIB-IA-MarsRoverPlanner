(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 - rover
		s0 - supply
		p0 p1 p2 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b0)
		(= (supplies r0) 0)

		(parked r1 b3)
		(= (supplies r1) 0)

		(parked r2 b2)
		(= (supplies r2) 0)

		; Supplies
	  (is-in s0 b4)

		; Staff
	  (is-in p0 b0)
	  (is-in p1 b0)
	  (is-in p2 b2)

		(needs p2 b0)
		(needs p1 b1)
		(needs p0 b1)
		(needs p0 b0)
		(needs p2 b2)
		(needs p1 b0)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

