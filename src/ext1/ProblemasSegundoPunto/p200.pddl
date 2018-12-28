(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 r88 r89 r90 r91 r92 r93 r94 r95 r96 r97 r98 r99 r100 r101 r102 r103 r104 r105 r106 r107 r108 r109 r110 r111 r112 r113 r114 r115 r116 r117 r118 r119 r120 r121 r122 r123 r124 r125 r126 r127 r128 r129 r130 r131 r132 r133 r134 r135 r136 r137 r138 r139 r140 r141 r142 r143 r144 r145 r146 r147 r148 r149 r150 r151 r152 r153 r154 r155 r156 r157 r158 r159 r160 r161 r162 r163 r164 r165 r166 r167 r168 r169 r170 r171 r172 r173 r174 r175 r176 r177 r178 r179 r180 r181 r182 r183 r184 r185 r186 r187 r188 r189 r190 r191 r192 r193 r194 r195 r196 r197 r198 r199 - rover
		s0 - supply
		p0 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b1)
		(= (supplies r0) 0)

		(parked r1 b4)
		(= (supplies r1) 0)

		(parked r2 b1)
		(= (supplies r2) 0)

		(parked r3 b5)
		(= (supplies r3) 0)

		(parked r4 b2)
		(= (supplies r4) 0)

		(parked r5 b3)
		(= (supplies r5) 0)

		(parked r6 b0)
		(= (supplies r6) 0)

		(parked r7 b1)
		(= (supplies r7) 0)

		(parked r8 b4)
		(= (supplies r8) 0)

		(parked r9 b4)
		(= (supplies r9) 0)

		(parked r10 b1)
		(= (supplies r10) 0)

		(parked r11 b4)
		(= (supplies r11) 0)

		(parked r12 b1)
		(= (supplies r12) 0)

		(parked r13 b3)
		(= (supplies r13) 0)

		(parked r14 b0)
		(= (supplies r14) 0)

		(parked r15 b4)
		(= (supplies r15) 0)

		(parked r16 b3)
		(= (supplies r16) 0)

		(parked r17 b1)
		(= (supplies r17) 0)

		(parked r18 b0)
		(= (supplies r18) 0)

		(parked r19 b4)
		(= (supplies r19) 0)

		(parked r20 b2)
		(= (supplies r20) 0)

		(parked r21 b4)
		(= (supplies r21) 0)

		(parked r22 b2)
		(= (supplies r22) 0)

		(parked r23 b2)
		(= (supplies r23) 0)

		(parked r24 b2)
		(= (supplies r24) 0)

		(parked r25 b3)
		(= (supplies r25) 0)

		(parked r26 b5)
		(= (supplies r26) 0)

		(parked r27 b4)
		(= (supplies r27) 0)

		(parked r28 b4)
		(= (supplies r28) 0)

		(parked r29 b2)
		(= (supplies r29) 0)

		(parked r30 b1)
		(= (supplies r30) 0)

		(parked r31 b0)
		(= (supplies r31) 0)

		(parked r32 b0)
		(= (supplies r32) 0)

		(parked r33 b2)
		(= (supplies r33) 0)

		(parked r34 b3)
		(= (supplies r34) 0)

		(parked r35 b0)
		(= (supplies r35) 0)

		(parked r36 b0)
		(= (supplies r36) 0)

		(parked r37 b1)
		(= (supplies r37) 0)

		(parked r38 b1)
		(= (supplies r38) 0)

		(parked r39 b2)
		(= (supplies r39) 0)

		(parked r40 b3)
		(= (supplies r40) 0)

		(parked r41 b3)
		(= (supplies r41) 0)

		(parked r42 b4)
		(= (supplies r42) 0)

		(parked r43 b2)
		(= (supplies r43) 0)

		(parked r44 b4)
		(= (supplies r44) 0)

		(parked r45 b3)
		(= (supplies r45) 0)

		(parked r46 b0)
		(= (supplies r46) 0)

		(parked r47 b5)
		(= (supplies r47) 0)

		(parked r48 b4)
		(= (supplies r48) 0)

		(parked r49 b4)
		(= (supplies r49) 0)

		(parked r50 b1)
		(= (supplies r50) 0)

		(parked r51 b0)
		(= (supplies r51) 0)

		(parked r52 b1)
		(= (supplies r52) 0)

		(parked r53 b4)
		(= (supplies r53) 0)

		(parked r54 b1)
		(= (supplies r54) 0)

		(parked r55 b1)
		(= (supplies r55) 0)

		(parked r56 b1)
		(= (supplies r56) 0)

		(parked r57 b0)
		(= (supplies r57) 0)

		(parked r58 b5)
		(= (supplies r58) 0)

		(parked r59 b4)
		(= (supplies r59) 0)

		(parked r60 b0)
		(= (supplies r60) 0)

		(parked r61 b1)
		(= (supplies r61) 0)

		(parked r62 b2)
		(= (supplies r62) 0)

		(parked r63 b4)
		(= (supplies r63) 0)

		(parked r64 b3)
		(= (supplies r64) 0)

		(parked r65 b3)
		(= (supplies r65) 0)

		(parked r66 b5)
		(= (supplies r66) 0)

		(parked r67 b1)
		(= (supplies r67) 0)

		(parked r68 b4)
		(= (supplies r68) 0)

		(parked r69 b0)
		(= (supplies r69) 0)

		(parked r70 b2)
		(= (supplies r70) 0)

		(parked r71 b5)
		(= (supplies r71) 0)

		(parked r72 b1)
		(= (supplies r72) 0)

		(parked r73 b0)
		(= (supplies r73) 0)

		(parked r74 b1)
		(= (supplies r74) 0)

		(parked r75 b3)
		(= (supplies r75) 0)

		(parked r76 b1)
		(= (supplies r76) 0)

		(parked r77 b5)
		(= (supplies r77) 0)

		(parked r78 b2)
		(= (supplies r78) 0)

		(parked r79 b0)
		(= (supplies r79) 0)

		(parked r80 b1)
		(= (supplies r80) 0)

		(parked r81 b2)
		(= (supplies r81) 0)

		(parked r82 b4)
		(= (supplies r82) 0)

		(parked r83 b2)
		(= (supplies r83) 0)

		(parked r84 b0)
		(= (supplies r84) 0)

		(parked r85 b5)
		(= (supplies r85) 0)

		(parked r86 b3)
		(= (supplies r86) 0)

		(parked r87 b5)
		(= (supplies r87) 0)

		(parked r88 b3)
		(= (supplies r88) 0)

		(parked r89 b3)
		(= (supplies r89) 0)

		(parked r90 b3)
		(= (supplies r90) 0)

		(parked r91 b3)
		(= (supplies r91) 0)

		(parked r92 b4)
		(= (supplies r92) 0)

		(parked r93 b5)
		(= (supplies r93) 0)

		(parked r94 b2)
		(= (supplies r94) 0)

		(parked r95 b5)
		(= (supplies r95) 0)

		(parked r96 b2)
		(= (supplies r96) 0)

		(parked r97 b5)
		(= (supplies r97) 0)

		(parked r98 b5)
		(= (supplies r98) 0)

		(parked r99 b4)
		(= (supplies r99) 0)

		(parked r100 b5)
		(= (supplies r100) 0)

		(parked r101 b5)
		(= (supplies r101) 0)

		(parked r102 b3)
		(= (supplies r102) 0)

		(parked r103 b5)
		(= (supplies r103) 0)

		(parked r104 b3)
		(= (supplies r104) 0)

		(parked r105 b2)
		(= (supplies r105) 0)

		(parked r106 b2)
		(= (supplies r106) 0)

		(parked r107 b5)
		(= (supplies r107) 0)

		(parked r108 b1)
		(= (supplies r108) 0)

		(parked r109 b3)
		(= (supplies r109) 0)

		(parked r110 b3)
		(= (supplies r110) 0)

		(parked r111 b3)
		(= (supplies r111) 0)

		(parked r112 b5)
		(= (supplies r112) 0)

		(parked r113 b1)
		(= (supplies r113) 0)

		(parked r114 b5)
		(= (supplies r114) 0)

		(parked r115 b3)
		(= (supplies r115) 0)

		(parked r116 b5)
		(= (supplies r116) 0)

		(parked r117 b3)
		(= (supplies r117) 0)

		(parked r118 b2)
		(= (supplies r118) 0)

		(parked r119 b2)
		(= (supplies r119) 0)

		(parked r120 b0)
		(= (supplies r120) 0)

		(parked r121 b0)
		(= (supplies r121) 0)

		(parked r122 b4)
		(= (supplies r122) 0)

		(parked r123 b2)
		(= (supplies r123) 0)

		(parked r124 b3)
		(= (supplies r124) 0)

		(parked r125 b4)
		(= (supplies r125) 0)

		(parked r126 b5)
		(= (supplies r126) 0)

		(parked r127 b0)
		(= (supplies r127) 0)

		(parked r128 b3)
		(= (supplies r128) 0)

		(parked r129 b4)
		(= (supplies r129) 0)

		(parked r130 b4)
		(= (supplies r130) 0)

		(parked r131 b0)
		(= (supplies r131) 0)

		(parked r132 b3)
		(= (supplies r132) 0)

		(parked r133 b0)
		(= (supplies r133) 0)

		(parked r134 b5)
		(= (supplies r134) 0)

		(parked r135 b1)
		(= (supplies r135) 0)

		(parked r136 b2)
		(= (supplies r136) 0)

		(parked r137 b0)
		(= (supplies r137) 0)

		(parked r138 b4)
		(= (supplies r138) 0)

		(parked r139 b4)
		(= (supplies r139) 0)

		(parked r140 b3)
		(= (supplies r140) 0)

		(parked r141 b1)
		(= (supplies r141) 0)

		(parked r142 b1)
		(= (supplies r142) 0)

		(parked r143 b0)
		(= (supplies r143) 0)

		(parked r144 b0)
		(= (supplies r144) 0)

		(parked r145 b4)
		(= (supplies r145) 0)

		(parked r146 b1)
		(= (supplies r146) 0)

		(parked r147 b5)
		(= (supplies r147) 0)

		(parked r148 b1)
		(= (supplies r148) 0)

		(parked r149 b3)
		(= (supplies r149) 0)

		(parked r150 b0)
		(= (supplies r150) 0)

		(parked r151 b5)
		(= (supplies r151) 0)

		(parked r152 b1)
		(= (supplies r152) 0)

		(parked r153 b4)
		(= (supplies r153) 0)

		(parked r154 b5)
		(= (supplies r154) 0)

		(parked r155 b5)
		(= (supplies r155) 0)

		(parked r156 b2)
		(= (supplies r156) 0)

		(parked r157 b3)
		(= (supplies r157) 0)

		(parked r158 b5)
		(= (supplies r158) 0)

		(parked r159 b5)
		(= (supplies r159) 0)

		(parked r160 b5)
		(= (supplies r160) 0)

		(parked r161 b1)
		(= (supplies r161) 0)

		(parked r162 b5)
		(= (supplies r162) 0)

		(parked r163 b1)
		(= (supplies r163) 0)

		(parked r164 b1)
		(= (supplies r164) 0)

		(parked r165 b3)
		(= (supplies r165) 0)

		(parked r166 b0)
		(= (supplies r166) 0)

		(parked r167 b4)
		(= (supplies r167) 0)

		(parked r168 b3)
		(= (supplies r168) 0)

		(parked r169 b4)
		(= (supplies r169) 0)

		(parked r170 b0)
		(= (supplies r170) 0)

		(parked r171 b4)
		(= (supplies r171) 0)

		(parked r172 b5)
		(= (supplies r172) 0)

		(parked r173 b5)
		(= (supplies r173) 0)

		(parked r174 b2)
		(= (supplies r174) 0)

		(parked r175 b5)
		(= (supplies r175) 0)

		(parked r176 b3)
		(= (supplies r176) 0)

		(parked r177 b3)
		(= (supplies r177) 0)

		(parked r178 b3)
		(= (supplies r178) 0)

		(parked r179 b3)
		(= (supplies r179) 0)

		(parked r180 b4)
		(= (supplies r180) 0)

		(parked r181 b3)
		(= (supplies r181) 0)

		(parked r182 b0)
		(= (supplies r182) 0)

		(parked r183 b0)
		(= (supplies r183) 0)

		(parked r184 b1)
		(= (supplies r184) 0)

		(parked r185 b4)
		(= (supplies r185) 0)

		(parked r186 b5)
		(= (supplies r186) 0)

		(parked r187 b1)
		(= (supplies r187) 0)

		(parked r188 b1)
		(= (supplies r188) 0)

		(parked r189 b4)
		(= (supplies r189) 0)

		(parked r190 b4)
		(= (supplies r190) 0)

		(parked r191 b0)
		(= (supplies r191) 0)

		(parked r192 b5)
		(= (supplies r192) 0)

		(parked r193 b1)
		(= (supplies r193) 0)

		(parked r194 b1)
		(= (supplies r194) 0)

		(parked r195 b5)
		(= (supplies r195) 0)

		(parked r196 b4)
		(= (supplies r196) 0)

		(parked r197 b1)
		(= (supplies r197) 0)

		(parked r198 b1)
		(= (supplies r198) 0)

		(parked r199 b5)
		(= (supplies r199) 0)

		; Supplies
		(is-in s0 b5)

		; Staff
		(is-in p0 b1)

		(needs s0 b5)
		(needs p0 b0)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

)

