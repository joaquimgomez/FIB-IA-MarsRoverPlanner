(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r1 - rover
		s1 - supply
		p1 p2 p3 p4 - person
		b1 b2 b3 - base
	)

	; Init
	(:init
		; Rovers
		(parked r1 b1)
		(= (supplies r1) 0)

		; Supplies
	  (is-in s1 b1)

		; Staff
		(is-in p1 b1)
		(is-in p2 b1)
		(is-in p3 b1)
		(is-in p4 b1)

		; Requests
		(needs p1 b2)
		(needs p2 b2)
		(needs p3 b2)
		(needs p4 b2)
		(needs s1 b2)
		(needs s1 b3)
	)

	; Goal
	(:goal
			(and
				(served s1)
				(served p1)
				(served p2)
				(served p3)
				(served p4)
			)
	)
)
