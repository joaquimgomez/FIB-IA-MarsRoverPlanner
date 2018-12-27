(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 - rover
		s0 - supply
		p0 - person
		b0 b1 - settlement
		b2 b3 b4 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b3)

		; Supplies
	  (is-in s0 b2)

		; Staff
	  (is-in p0 b1)

		(needs s0 b4)
		(needs p0 b0)
		(needs s0 b3)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

