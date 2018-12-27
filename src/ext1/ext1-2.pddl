(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 - rover
		s0 s1 - supply
		p0 p1 p2 - person
		b0 b1 b2 - settlement
		b3 b4 b5 b6 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b4)
		(= (supplies r0) 0)

		(parked r1 b6)
		(= (supplies r1) 0)

		(parked r2 b3)
		(= (supplies r2) 0)

		(parked r3 b4)
		(= (supplies r3) 0)

		; Supplies
	  (is-in s0 b3)
	  (is-in s1 b6)

		; Staff
	  (is-in p0 b1)
	  (is-in p1 b0)
	  (is-in p2 b1)

		(needs s1 b4)
		(needs p1 b0)
		(needs p0 b0)
		(needs p1 b1)
		(needs p2 b0)
		(needs s0 b5)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

