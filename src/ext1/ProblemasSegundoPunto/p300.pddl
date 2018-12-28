(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 r88 r89 r90 r91 r92 r93 r94 r95 r96 r97 r98 r99 r100 r101 r102 r103 r104 r105 r106 r107 r108 r109 r110 r111 r112 r113 r114 r115 r116 r117 r118 r119 r120 r121 r122 r123 r124 r125 r126 r127 r128 r129 r130 r131 r132 r133 r134 r135 r136 r137 r138 r139 r140 r141 r142 r143 r144 r145 r146 r147 r148 r149 r150 r151 r152 r153 r154 r155 r156 r157 r158 r159 r160 r161 r162 r163 r164 r165 r166 r167 r168 r169 r170 r171 r172 r173 r174 r175 r176 r177 r178 r179 r180 r181 r182 r183 r184 r185 r186 r187 r188 r189 r190 r191 r192 r193 r194 r195 r196 r197 r198 r199 r200 r201 r202 r203 r204 r205 r206 r207 r208 r209 r210 r211 r212 r213 r214 r215 r216 r217 r218 r219 r220 r221 r222 r223 r224 r225 r226 r227 r228 r229 r230 r231 r232 r233 r234 r235 r236 r237 r238 r239 r240 r241 r242 r243 r244 r245 r246 r247 r248 r249 r250 r251 r252 r253 r254 r255 r256 r257 r258 r259 r260 r261 r262 r263 r264 r265 r266 r267 r268 r269 r270 r271 r272 r273 r274 r275 r276 r277 r278 r279 r280 r281 r282 r283 r284 r285 r286 r287 r288 r289 r290 r291 r292 r293 r294 r295 r296 r297 r298 r299 - rover
		s0 - supply
		p0 - person
		b0 b1 b2 - settlement
		b3 b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(parked r0 b0)
		(= (supplies r0) 0)

		(parked r1 b0)
		(= (supplies r1) 0)

		(parked r2 b5)
		(= (supplies r2) 0)

		(parked r3 b0)
		(= (supplies r3) 0)

		(parked r4 b1)
		(= (supplies r4) 0)

		(parked r5 b3)
		(= (supplies r5) 0)

		(parked r6 b3)
		(= (supplies r6) 0)

		(parked r7 b3)
		(= (supplies r7) 0)

		(parked r8 b5)
		(= (supplies r8) 0)

		(parked r9 b4)
		(= (supplies r9) 0)

		(parked r10 b5)
		(= (supplies r10) 0)

		(parked r11 b5)
		(= (supplies r11) 0)

		(parked r12 b3)
		(= (supplies r12) 0)

		(parked r13 b1)
		(= (supplies r13) 0)

		(parked r14 b3)
		(= (supplies r14) 0)

		(parked r15 b4)
		(= (supplies r15) 0)

		(parked r16 b0)
		(= (supplies r16) 0)

		(parked r17 b5)
		(= (supplies r17) 0)

		(parked r18 b0)
		(= (supplies r18) 0)

		(parked r19 b3)
		(= (supplies r19) 0)

		(parked r20 b5)
		(= (supplies r20) 0)

		(parked r21 b0)
		(= (supplies r21) 0)

		(parked r22 b3)
		(= (supplies r22) 0)

		(parked r23 b0)
		(= (supplies r23) 0)

		(parked r24 b2)
		(= (supplies r24) 0)

		(parked r25 b2)
		(= (supplies r25) 0)

		(parked r26 b2)
		(= (supplies r26) 0)

		(parked r27 b4)
		(= (supplies r27) 0)

		(parked r28 b4)
		(= (supplies r28) 0)

		(parked r29 b4)
		(= (supplies r29) 0)

		(parked r30 b0)
		(= (supplies r30) 0)

		(parked r31 b4)
		(= (supplies r31) 0)

		(parked r32 b4)
		(= (supplies r32) 0)

		(parked r33 b3)
		(= (supplies r33) 0)

		(parked r34 b4)
		(= (supplies r34) 0)

		(parked r35 b3)
		(= (supplies r35) 0)

		(parked r36 b4)
		(= (supplies r36) 0)

		(parked r37 b2)
		(= (supplies r37) 0)

		(parked r38 b0)
		(= (supplies r38) 0)

		(parked r39 b3)
		(= (supplies r39) 0)

		(parked r40 b4)
		(= (supplies r40) 0)

		(parked r41 b0)
		(= (supplies r41) 0)

		(parked r42 b0)
		(= (supplies r42) 0)

		(parked r43 b1)
		(= (supplies r43) 0)

		(parked r44 b5)
		(= (supplies r44) 0)

		(parked r45 b3)
		(= (supplies r45) 0)

		(parked r46 b5)
		(= (supplies r46) 0)

		(parked r47 b3)
		(= (supplies r47) 0)

		(parked r48 b0)
		(= (supplies r48) 0)

		(parked r49 b5)
		(= (supplies r49) 0)

		(parked r50 b0)
		(= (supplies r50) 0)

		(parked r51 b4)
		(= (supplies r51) 0)

		(parked r52 b4)
		(= (supplies r52) 0)

		(parked r53 b3)
		(= (supplies r53) 0)

		(parked r54 b4)
		(= (supplies r54) 0)

		(parked r55 b0)
		(= (supplies r55) 0)

		(parked r56 b3)
		(= (supplies r56) 0)

		(parked r57 b4)
		(= (supplies r57) 0)

		(parked r58 b2)
		(= (supplies r58) 0)

		(parked r59 b2)
		(= (supplies r59) 0)

		(parked r60 b0)
		(= (supplies r60) 0)

		(parked r61 b2)
		(= (supplies r61) 0)

		(parked r62 b0)
		(= (supplies r62) 0)

		(parked r63 b4)
		(= (supplies r63) 0)

		(parked r64 b5)
		(= (supplies r64) 0)

		(parked r65 b3)
		(= (supplies r65) 0)

		(parked r66 b5)
		(= (supplies r66) 0)

		(parked r67 b3)
		(= (supplies r67) 0)

		(parked r68 b3)
		(= (supplies r68) 0)

		(parked r69 b0)
		(= (supplies r69) 0)

		(parked r70 b4)
		(= (supplies r70) 0)

		(parked r71 b1)
		(= (supplies r71) 0)

		(parked r72 b4)
		(= (supplies r72) 0)

		(parked r73 b2)
		(= (supplies r73) 0)

		(parked r74 b0)
		(= (supplies r74) 0)

		(parked r75 b3)
		(= (supplies r75) 0)

		(parked r76 b5)
		(= (supplies r76) 0)

		(parked r77 b5)
		(= (supplies r77) 0)

		(parked r78 b0)
		(= (supplies r78) 0)

		(parked r79 b5)
		(= (supplies r79) 0)

		(parked r80 b2)
		(= (supplies r80) 0)

		(parked r81 b5)
		(= (supplies r81) 0)

		(parked r82 b3)
		(= (supplies r82) 0)

		(parked r83 b0)
		(= (supplies r83) 0)

		(parked r84 b2)
		(= (supplies r84) 0)

		(parked r85 b5)
		(= (supplies r85) 0)

		(parked r86 b0)
		(= (supplies r86) 0)

		(parked r87 b4)
		(= (supplies r87) 0)

		(parked r88 b3)
		(= (supplies r88) 0)

		(parked r89 b2)
		(= (supplies r89) 0)

		(parked r90 b0)
		(= (supplies r90) 0)

		(parked r91 b3)
		(= (supplies r91) 0)

		(parked r92 b2)
		(= (supplies r92) 0)

		(parked r93 b4)
		(= (supplies r93) 0)

		(parked r94 b5)
		(= (supplies r94) 0)

		(parked r95 b5)
		(= (supplies r95) 0)

		(parked r96 b1)
		(= (supplies r96) 0)

		(parked r97 b5)
		(= (supplies r97) 0)

		(parked r98 b0)
		(= (supplies r98) 0)

		(parked r99 b4)
		(= (supplies r99) 0)

		(parked r100 b3)
		(= (supplies r100) 0)

		(parked r101 b2)
		(= (supplies r101) 0)

		(parked r102 b3)
		(= (supplies r102) 0)

		(parked r103 b5)
		(= (supplies r103) 0)

		(parked r104 b4)
		(= (supplies r104) 0)

		(parked r105 b3)
		(= (supplies r105) 0)

		(parked r106 b2)
		(= (supplies r106) 0)

		(parked r107 b1)
		(= (supplies r107) 0)

		(parked r108 b2)
		(= (supplies r108) 0)

		(parked r109 b0)
		(= (supplies r109) 0)

		(parked r110 b5)
		(= (supplies r110) 0)

		(parked r111 b3)
		(= (supplies r111) 0)

		(parked r112 b5)
		(= (supplies r112) 0)

		(parked r113 b2)
		(= (supplies r113) 0)

		(parked r114 b3)
		(= (supplies r114) 0)

		(parked r115 b0)
		(= (supplies r115) 0)

		(parked r116 b0)
		(= (supplies r116) 0)

		(parked r117 b2)
		(= (supplies r117) 0)

		(parked r118 b4)
		(= (supplies r118) 0)

		(parked r119 b1)
		(= (supplies r119) 0)

		(parked r120 b2)
		(= (supplies r120) 0)

		(parked r121 b4)
		(= (supplies r121) 0)

		(parked r122 b3)
		(= (supplies r122) 0)

		(parked r123 b5)
		(= (supplies r123) 0)

		(parked r124 b2)
		(= (supplies r124) 0)

		(parked r125 b0)
		(= (supplies r125) 0)

		(parked r126 b2)
		(= (supplies r126) 0)

		(parked r127 b2)
		(= (supplies r127) 0)

		(parked r128 b3)
		(= (supplies r128) 0)

		(parked r129 b3)
		(= (supplies r129) 0)

		(parked r130 b4)
		(= (supplies r130) 0)

		(parked r131 b0)
		(= (supplies r131) 0)

		(parked r132 b5)
		(= (supplies r132) 0)

		(parked r133 b2)
		(= (supplies r133) 0)

		(parked r134 b5)
		(= (supplies r134) 0)

		(parked r135 b2)
		(= (supplies r135) 0)

		(parked r136 b5)
		(= (supplies r136) 0)

		(parked r137 b5)
		(= (supplies r137) 0)

		(parked r138 b3)
		(= (supplies r138) 0)

		(parked r139 b0)
		(= (supplies r139) 0)

		(parked r140 b4)
		(= (supplies r140) 0)

		(parked r141 b2)
		(= (supplies r141) 0)

		(parked r142 b3)
		(= (supplies r142) 0)

		(parked r143 b3)
		(= (supplies r143) 0)

		(parked r144 b3)
		(= (supplies r144) 0)

		(parked r145 b4)
		(= (supplies r145) 0)

		(parked r146 b1)
		(= (supplies r146) 0)

		(parked r147 b3)
		(= (supplies r147) 0)

		(parked r148 b0)
		(= (supplies r148) 0)

		(parked r149 b5)
		(= (supplies r149) 0)

		(parked r150 b2)
		(= (supplies r150) 0)

		(parked r151 b1)
		(= (supplies r151) 0)

		(parked r152 b1)
		(= (supplies r152) 0)

		(parked r153 b5)
		(= (supplies r153) 0)

		(parked r154 b4)
		(= (supplies r154) 0)

		(parked r155 b2)
		(= (supplies r155) 0)

		(parked r156 b0)
		(= (supplies r156) 0)

		(parked r157 b0)
		(= (supplies r157) 0)

		(parked r158 b2)
		(= (supplies r158) 0)

		(parked r159 b3)
		(= (supplies r159) 0)

		(parked r160 b1)
		(= (supplies r160) 0)

		(parked r161 b0)
		(= (supplies r161) 0)

		(parked r162 b2)
		(= (supplies r162) 0)

		(parked r163 b1)
		(= (supplies r163) 0)

		(parked r164 b2)
		(= (supplies r164) 0)

		(parked r165 b5)
		(= (supplies r165) 0)

		(parked r166 b3)
		(= (supplies r166) 0)

		(parked r167 b0)
		(= (supplies r167) 0)

		(parked r168 b5)
		(= (supplies r168) 0)

		(parked r169 b4)
		(= (supplies r169) 0)

		(parked r170 b0)
		(= (supplies r170) 0)

		(parked r171 b3)
		(= (supplies r171) 0)

		(parked r172 b1)
		(= (supplies r172) 0)

		(parked r173 b1)
		(= (supplies r173) 0)

		(parked r174 b4)
		(= (supplies r174) 0)

		(parked r175 b4)
		(= (supplies r175) 0)

		(parked r176 b5)
		(= (supplies r176) 0)

		(parked r177 b0)
		(= (supplies r177) 0)

		(parked r178 b5)
		(= (supplies r178) 0)

		(parked r179 b4)
		(= (supplies r179) 0)

		(parked r180 b3)
		(= (supplies r180) 0)

		(parked r181 b1)
		(= (supplies r181) 0)

		(parked r182 b5)
		(= (supplies r182) 0)

		(parked r183 b3)
		(= (supplies r183) 0)

		(parked r184 b5)
		(= (supplies r184) 0)

		(parked r185 b1)
		(= (supplies r185) 0)

		(parked r186 b5)
		(= (supplies r186) 0)

		(parked r187 b3)
		(= (supplies r187) 0)

		(parked r188 b1)
		(= (supplies r188) 0)

		(parked r189 b1)
		(= (supplies r189) 0)

		(parked r190 b4)
		(= (supplies r190) 0)

		(parked r191 b3)
		(= (supplies r191) 0)

		(parked r192 b1)
		(= (supplies r192) 0)

		(parked r193 b0)
		(= (supplies r193) 0)

		(parked r194 b2)
		(= (supplies r194) 0)

		(parked r195 b2)
		(= (supplies r195) 0)

		(parked r196 b4)
		(= (supplies r196) 0)

		(parked r197 b3)
		(= (supplies r197) 0)

		(parked r198 b2)
		(= (supplies r198) 0)

		(parked r199 b1)
		(= (supplies r199) 0)

		(parked r200 b1)
		(= (supplies r200) 0)

		(parked r201 b2)
		(= (supplies r201) 0)

		(parked r202 b2)
		(= (supplies r202) 0)

		(parked r203 b0)
		(= (supplies r203) 0)

		(parked r204 b1)
		(= (supplies r204) 0)

		(parked r205 b0)
		(= (supplies r205) 0)

		(parked r206 b4)
		(= (supplies r206) 0)

		(parked r207 b0)
		(= (supplies r207) 0)

		(parked r208 b4)
		(= (supplies r208) 0)

		(parked r209 b1)
		(= (supplies r209) 0)

		(parked r210 b2)
		(= (supplies r210) 0)

		(parked r211 b0)
		(= (supplies r211) 0)

		(parked r212 b3)
		(= (supplies r212) 0)

		(parked r213 b1)
		(= (supplies r213) 0)

		(parked r214 b3)
		(= (supplies r214) 0)

		(parked r215 b0)
		(= (supplies r215) 0)

		(parked r216 b2)
		(= (supplies r216) 0)

		(parked r217 b0)
		(= (supplies r217) 0)

		(parked r218 b3)
		(= (supplies r218) 0)

		(parked r219 b2)
		(= (supplies r219) 0)

		(parked r220 b5)
		(= (supplies r220) 0)

		(parked r221 b1)
		(= (supplies r221) 0)

		(parked r222 b5)
		(= (supplies r222) 0)

		(parked r223 b4)
		(= (supplies r223) 0)

		(parked r224 b0)
		(= (supplies r224) 0)

		(parked r225 b5)
		(= (supplies r225) 0)

		(parked r226 b0)
		(= (supplies r226) 0)

		(parked r227 b4)
		(= (supplies r227) 0)

		(parked r228 b2)
		(= (supplies r228) 0)

		(parked r229 b0)
		(= (supplies r229) 0)

		(parked r230 b5)
		(= (supplies r230) 0)

		(parked r231 b1)
		(= (supplies r231) 0)

		(parked r232 b0)
		(= (supplies r232) 0)

		(parked r233 b1)
		(= (supplies r233) 0)

		(parked r234 b2)
		(= (supplies r234) 0)

		(parked r235 b1)
		(= (supplies r235) 0)

		(parked r236 b5)
		(= (supplies r236) 0)

		(parked r237 b4)
		(= (supplies r237) 0)

		(parked r238 b2)
		(= (supplies r238) 0)

		(parked r239 b4)
		(= (supplies r239) 0)

		(parked r240 b0)
		(= (supplies r240) 0)

		(parked r241 b4)
		(= (supplies r241) 0)

		(parked r242 b2)
		(= (supplies r242) 0)

		(parked r243 b1)
		(= (supplies r243) 0)

		(parked r244 b4)
		(= (supplies r244) 0)

		(parked r245 b5)
		(= (supplies r245) 0)

		(parked r246 b1)
		(= (supplies r246) 0)

		(parked r247 b4)
		(= (supplies r247) 0)

		(parked r248 b3)
		(= (supplies r248) 0)

		(parked r249 b2)
		(= (supplies r249) 0)

		(parked r250 b0)
		(= (supplies r250) 0)

		(parked r251 b2)
		(= (supplies r251) 0)

		(parked r252 b3)
		(= (supplies r252) 0)

		(parked r253 b3)
		(= (supplies r253) 0)

		(parked r254 b0)
		(= (supplies r254) 0)

		(parked r255 b3)
		(= (supplies r255) 0)

		(parked r256 b0)
		(= (supplies r256) 0)

		(parked r257 b1)
		(= (supplies r257) 0)

		(parked r258 b5)
		(= (supplies r258) 0)

		(parked r259 b2)
		(= (supplies r259) 0)

		(parked r260 b1)
		(= (supplies r260) 0)

		(parked r261 b4)
		(= (supplies r261) 0)

		(parked r262 b2)
		(= (supplies r262) 0)

		(parked r263 b2)
		(= (supplies r263) 0)

		(parked r264 b5)
		(= (supplies r264) 0)

		(parked r265 b4)
		(= (supplies r265) 0)

		(parked r266 b1)
		(= (supplies r266) 0)

		(parked r267 b5)
		(= (supplies r267) 0)

		(parked r268 b2)
		(= (supplies r268) 0)

		(parked r269 b3)
		(= (supplies r269) 0)

		(parked r270 b1)
		(= (supplies r270) 0)

		(parked r271 b0)
		(= (supplies r271) 0)

		(parked r272 b0)
		(= (supplies r272) 0)

		(parked r273 b3)
		(= (supplies r273) 0)

		(parked r274 b5)
		(= (supplies r274) 0)

		(parked r275 b4)
		(= (supplies r275) 0)

		(parked r276 b0)
		(= (supplies r276) 0)

		(parked r277 b0)
		(= (supplies r277) 0)

		(parked r278 b0)
		(= (supplies r278) 0)

		(parked r279 b3)
		(= (supplies r279) 0)

		(parked r280 b0)
		(= (supplies r280) 0)

		(parked r281 b5)
		(= (supplies r281) 0)

		(parked r282 b5)
		(= (supplies r282) 0)

		(parked r283 b4)
		(= (supplies r283) 0)

		(parked r284 b2)
		(= (supplies r284) 0)

		(parked r285 b3)
		(= (supplies r285) 0)

		(parked r286 b5)
		(= (supplies r286) 0)

		(parked r287 b3)
		(= (supplies r287) 0)

		(parked r288 b4)
		(= (supplies r288) 0)

		(parked r289 b3)
		(= (supplies r289) 0)

		(parked r290 b3)
		(= (supplies r290) 0)

		(parked r291 b4)
		(= (supplies r291) 0)

		(parked r292 b1)
		(= (supplies r292) 0)

		(parked r293 b5)
		(= (supplies r293) 0)

		(parked r294 b4)
		(= (supplies r294) 0)

		(parked r295 b5)
		(= (supplies r295) 0)

		(parked r296 b1)
		(= (supplies r296) 0)

		(parked r297 b5)
		(= (supplies r297) 0)

		(parked r298 b2)
		(= (supplies r298) 0)

		(parked r299 b2)
		(= (supplies r299) 0)

		; Supplies
		(is-in s0 b4)

		; Staff
		(is-in p0 b1)

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

