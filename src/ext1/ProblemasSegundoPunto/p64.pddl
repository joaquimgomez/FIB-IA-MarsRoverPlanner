(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 - rover
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

		(parked r1 b4)
		(= (supplies r1) 0)

		(parked r2 b1)
		(= (supplies r2) 0)

		(parked r3 b2)
		(= (supplies r3) 0)

		(parked r4 b4)
		(= (supplies r4) 0)

		(parked r5 b0)
		(= (supplies r5) 0)

		(parked r6 b4)
		(= (supplies r6) 0)

		(parked r7 b1)
		(= (supplies r7) 0)

		(parked r8 b5)
		(= (supplies r8) 0)

		(parked r9 b3)
		(= (supplies r9) 0)

		(parked r10 b1)
		(= (supplies r10) 0)

		(parked r11 b2)
		(= (supplies r11) 0)

		(parked r12 b1)
		(= (supplies r12) 0)

		(parked r13 b4)
		(= (supplies r13) 0)

		(parked r14 b3)
		(= (supplies r14) 0)

		(parked r15 b4)
		(= (supplies r15) 0)

		(parked r16 b4)
		(= (supplies r16) 0)

		(parked r17 b1)
		(= (supplies r17) 0)

		(parked r18 b5)
		(= (supplies r18) 0)

		(parked r19 b3)
		(= (supplies r19) 0)

		(parked r20 b5)
		(= (supplies r20) 0)

		(parked r21 b2)
		(= (supplies r21) 0)

		(parked r22 b4)
		(= (supplies r22) 0)

		(parked r23 b1)
		(= (supplies r23) 0)

		(parked r24 b2)
		(= (supplies r24) 0)

		(parked r25 b4)
		(= (supplies r25) 0)

		(parked r26 b4)
		(= (supplies r26) 0)

		(parked r27 b5)
		(= (supplies r27) 0)

		(parked r28 b1)
		(= (supplies r28) 0)

		(parked r29 b2)
		(= (supplies r29) 0)

		(parked r30 b1)
		(= (supplies r30) 0)

		(parked r31 b4)
		(= (supplies r31) 0)

		(parked r32 b0)
		(= (supplies r32) 0)

		(parked r33 b2)
		(= (supplies r33) 0)

		(parked r34 b0)
		(= (supplies r34) 0)

		(parked r35 b2)
		(= (supplies r35) 0)

		(parked r36 b2)
		(= (supplies r36) 0)

		(parked r37 b2)
		(= (supplies r37) 0)

		(parked r38 b3)
		(= (supplies r38) 0)

		(parked r39 b5)
		(= (supplies r39) 0)

		(parked r40 b5)
		(= (supplies r40) 0)

		(parked r41 b5)
		(= (supplies r41) 0)

		(parked r42 b2)
		(= (supplies r42) 0)

		(parked r43 b0)
		(= (supplies r43) 0)

		(parked r44 b1)
		(= (supplies r44) 0)

		(parked r45 b5)
		(= (supplies r45) 0)

		(parked r46 b2)
		(= (supplies r46) 0)

		(parked r47 b0)
		(= (supplies r47) 0)

		(parked r48 b4)
		(= (supplies r48) 0)

		(parked r49 b5)
		(= (supplies r49) 0)

		(parked r50 b1)
		(= (supplies r50) 0)

		(parked r51 b3)
		(= (supplies r51) 0)

		(parked r52 b2)
		(= (supplies r52) 0)

		(parked r53 b5)
		(= (supplies r53) 0)

		(parked r54 b3)
		(= (supplies r54) 0)

		(parked r55 b2)
		(= (supplies r55) 0)

		(parked r56 b3)
		(= (supplies r56) 0)

		(parked r57 b1)
		(= (supplies r57) 0)

		(parked r58 b1)
		(= (supplies r58) 0)

		(parked r59 b5)
		(= (supplies r59) 0)

		(parked r60 b1)
		(= (supplies r60) 0)

		(parked r61 b2)
		(= (supplies r61) 0)

		(parked r62 b1)
		(= (supplies r62) 0)

		(parked r63 b5)
		(= (supplies r63) 0)

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

