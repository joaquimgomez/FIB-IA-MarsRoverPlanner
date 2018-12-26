(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r1 - rover
		s1 - supply
		p1 - staff
		b1 b2 b3 - base
	)

	; Init
	(:init
		(parked r1 b1)
	  (is-in s1 b1)
		(is-in p1 b1)
		(needs p1 b2)
		(needs s1 b2)
		(needs s1 b3)
		(= (performed) 0)
	)

	; Goal
	(:goal
			(and
				(not (needs p1 b2))
				(not (needs s1 b2))
				(not (needs s1 b3))
			)
	)

	(:metric maximize (performed))
)
