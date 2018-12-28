(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 r88 r89 r90 r91 r92 r93 r94 r95 r96 r97 r98 r99 r100 r101 r102 r103 r104 r105 r106 r107 r108 r109 r110 r111 r112 r113 r114 r115 r116 r117 r118 r119 r120 r121 r122 r123 r124 r125 r126 r127 - rover
		s0 - supply
		p0 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b3)
		(= (supplies r0) 0)

		(parked r1 b3)
		(= (supplies r1) 0)

		(parked r2 b5)
		(= (supplies r2) 0)

		(parked r3 b3)
		(= (supplies r3) 0)

		(parked r4 b3)
		(= (supplies r4) 0)

		(parked r5 b1)
		(= (supplies r5) 0)

		(parked r6 b0)
		(= (supplies r6) 0)

		(parked r7 b1)
		(= (supplies r7) 0)

		(parked r8 b3)
		(= (supplies r8) 0)

		(parked r9 b0)
		(= (supplies r9) 0)

		(parked r10 b3)
		(= (supplies r10) 0)

		(parked r11 b0)
		(= (supplies r11) 0)

		(parked r12 b3)
		(= (supplies r12) 0)

		(parked r13 b5)
		(= (supplies r13) 0)

		(parked r14 b5)
		(= (supplies r14) 0)

		(parked r15 b1)
		(= (supplies r15) 0)

		(parked r16 b2)
		(= (supplies r16) 0)

		(parked r17 b5)
		(= (supplies r17) 0)

		(parked r18 b1)
		(= (supplies r18) 0)

		(parked r19 b0)
		(= (supplies r19) 0)

		(parked r20 b4)
		(= (supplies r20) 0)

		(parked r21 b2)
		(= (supplies r21) 0)

		(parked r22 b3)
		(= (supplies r22) 0)

		(parked r23 b2)
		(= (supplies r23) 0)

		(parked r24 b5)
		(= (supplies r24) 0)

		(parked r25 b5)
		(= (supplies r25) 0)

		(parked r26 b4)
		(= (supplies r26) 0)

		(parked r27 b3)
		(= (supplies r27) 0)

		(parked r28 b3)
		(= (supplies r28) 0)

		(parked r29 b0)
		(= (supplies r29) 0)

		(parked r30 b4)
		(= (supplies r30) 0)

		(parked r31 b1)
		(= (supplies r31) 0)

		(parked r32 b1)
		(= (supplies r32) 0)

		(parked r33 b1)
		(= (supplies r33) 0)

		(parked r34 b4)
		(= (supplies r34) 0)

		(parked r35 b4)
		(= (supplies r35) 0)

		(parked r36 b3)
		(= (supplies r36) 0)

		(parked r37 b3)
		(= (supplies r37) 0)

		(parked r38 b3)
		(= (supplies r38) 0)

		(parked r39 b0)
		(= (supplies r39) 0)

		(parked r40 b3)
		(= (supplies r40) 0)

		(parked r41 b4)
		(= (supplies r41) 0)

		(parked r42 b4)
		(= (supplies r42) 0)

		(parked r43 b4)
		(= (supplies r43) 0)

		(parked r44 b4)
		(= (supplies r44) 0)

		(parked r45 b3)
		(= (supplies r45) 0)

		(parked r46 b0)
		(= (supplies r46) 0)

		(parked r47 b0)
		(= (supplies r47) 0)

		(parked r48 b3)
		(= (supplies r48) 0)

		(parked r49 b5)
		(= (supplies r49) 0)

		(parked r50 b4)
		(= (supplies r50) 0)

		(parked r51 b5)
		(= (supplies r51) 0)

		(parked r52 b1)
		(= (supplies r52) 0)

		(parked r53 b0)
		(= (supplies r53) 0)

		(parked r54 b0)
		(= (supplies r54) 0)

		(parked r55 b4)
		(= (supplies r55) 0)

		(parked r56 b5)
		(= (supplies r56) 0)

		(parked r57 b4)
		(= (supplies r57) 0)

		(parked r58 b5)
		(= (supplies r58) 0)

		(parked r59 b2)
		(= (supplies r59) 0)

		(parked r60 b2)
		(= (supplies r60) 0)

		(parked r61 b1)
		(= (supplies r61) 0)

		(parked r62 b1)
		(= (supplies r62) 0)

		(parked r63 b3)
		(= (supplies r63) 0)

		(parked r64 b3)
		(= (supplies r64) 0)

		(parked r65 b4)
		(= (supplies r65) 0)

		(parked r66 b1)
		(= (supplies r66) 0)

		(parked r67 b0)
		(= (supplies r67) 0)

		(parked r68 b1)
		(= (supplies r68) 0)

		(parked r69 b2)
		(= (supplies r69) 0)

		(parked r70 b4)
		(= (supplies r70) 0)

		(parked r71 b4)
		(= (supplies r71) 0)

		(parked r72 b1)
		(= (supplies r72) 0)

		(parked r73 b2)
		(= (supplies r73) 0)

		(parked r74 b1)
		(= (supplies r74) 0)

		(parked r75 b3)
		(= (supplies r75) 0)

		(parked r76 b3)
		(= (supplies r76) 0)

		(parked r77 b1)
		(= (supplies r77) 0)

		(parked r78 b1)
		(= (supplies r78) 0)

		(parked r79 b4)
		(= (supplies r79) 0)

		(parked r80 b0)
		(= (supplies r80) 0)

		(parked r81 b0)
		(= (supplies r81) 0)

		(parked r82 b4)
		(= (supplies r82) 0)

		(parked r83 b5)
		(= (supplies r83) 0)

		(parked r84 b0)
		(= (supplies r84) 0)

		(parked r85 b2)
		(= (supplies r85) 0)

		(parked r86 b4)
		(= (supplies r86) 0)

		(parked r87 b3)
		(= (supplies r87) 0)

		(parked r88 b0)
		(= (supplies r88) 0)

		(parked r89 b3)
		(= (supplies r89) 0)

		(parked r90 b3)
		(= (supplies r90) 0)

		(parked r91 b2)
		(= (supplies r91) 0)

		(parked r92 b3)
		(= (supplies r92) 0)

		(parked r93 b5)
		(= (supplies r93) 0)

		(parked r94 b3)
		(= (supplies r94) 0)

		(parked r95 b0)
		(= (supplies r95) 0)

		(parked r96 b3)
		(= (supplies r96) 0)

		(parked r97 b2)
		(= (supplies r97) 0)

		(parked r98 b4)
		(= (supplies r98) 0)

		(parked r99 b2)
		(= (supplies r99) 0)

		(parked r100 b4)
		(= (supplies r100) 0)

		(parked r101 b2)
		(= (supplies r101) 0)

		(parked r102 b4)
		(= (supplies r102) 0)

		(parked r103 b3)
		(= (supplies r103) 0)

		(parked r104 b2)
		(= (supplies r104) 0)

		(parked r105 b5)
		(= (supplies r105) 0)

		(parked r106 b0)
		(= (supplies r106) 0)

		(parked r107 b5)
		(= (supplies r107) 0)

		(parked r108 b4)
		(= (supplies r108) 0)

		(parked r109 b2)
		(= (supplies r109) 0)

		(parked r110 b4)
		(= (supplies r110) 0)

		(parked r111 b4)
		(= (supplies r111) 0)

		(parked r112 b0)
		(= (supplies r112) 0)

		(parked r113 b0)
		(= (supplies r113) 0)

		(parked r114 b2)
		(= (supplies r114) 0)

		(parked r115 b4)
		(= (supplies r115) 0)

		(parked r116 b0)
		(= (supplies r116) 0)

		(parked r117 b0)
		(= (supplies r117) 0)

		(parked r118 b1)
		(= (supplies r118) 0)

		(parked r119 b4)
		(= (supplies r119) 0)

		(parked r120 b1)
		(= (supplies r120) 0)

		(parked r121 b4)
		(= (supplies r121) 0)

		(parked r122 b4)
		(= (supplies r122) 0)

		(parked r123 b4)
		(= (supplies r123) 0)

		(parked r124 b1)
		(= (supplies r124) 0)

		(parked r125 b1)
		(= (supplies r125) 0)

		(parked r126 b2)
		(= (supplies r126) 0)

		(parked r127 b2)
		(= (supplies r127) 0)

		; Supplies
		(is-in s0 b3)

		; Staff
		(is-in p0 b0)

		(needs p0 b1)
		(needs s0 b3)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

