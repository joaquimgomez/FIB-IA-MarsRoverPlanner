(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 - rover
		s0 - supply
		p0 p1 p2 p3 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b4)
		(= (supplies r0) 0)

		; Supplies
	  (is-in s0 b5)

		; Staff
	  (is-in p0 b2)
	  (is-in p1 b0)
	  (is-in p2 b0)
	  (is-in p3 b0)

		(needs s0 b3)
		(needs p0 b1)
		(needs p2 b2)
		(needs p1 b0)
		(needs s0 b4)
		(needs p1 b2)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

