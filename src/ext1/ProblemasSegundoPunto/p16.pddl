(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 - rover
		s0 - supply
		p0 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b5)
		(= (supplies r0) 0)

		(parked r1 b4)
		(= (supplies r1) 0)

		(parked r2 b2)
		(= (supplies r2) 0)

		(parked r3 b5)
		(= (supplies r3) 0)

		(parked r4 b3)
		(= (supplies r4) 0)

		(parked r5 b5)
		(= (supplies r5) 0)

		(parked r6 b3)
		(= (supplies r6) 0)

		(parked r7 b5)
		(= (supplies r7) 0)

		(parked r8 b5)
		(= (supplies r8) 0)

		(parked r9 b1)
		(= (supplies r9) 0)

		(parked r10 b0)
		(= (supplies r10) 0)

		(parked r11 b0)
		(= (supplies r11) 0)

		(parked r12 b5)
		(= (supplies r12) 0)

		(parked r13 b0)
		(= (supplies r13) 0)

		(parked r14 b0)
		(= (supplies r14) 0)

		(parked r15 b0)
		(= (supplies r15) 0)

		; Supplies
		(is-in s0 b5)

		; Staff
		(is-in p0 b0)

		(needs s0 b4)
		(needs p0 b0)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

