(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 - rover
		s0 - supply
		p0 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b2)
		(= (supplies r0) 0)

		(parked r1 b5)
		(= (supplies r1) 0)

		; Supplies
		(is-in s0 b4)

		; Staff
		(is-in p0 b2)

		(needs p0 b0)
		(needs s0 b5)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

