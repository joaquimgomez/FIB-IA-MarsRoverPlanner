(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 r3 r4 - rover
		s0 s1 - supply
		p0 p1 - person
		b0 b1 b2 b3 - settlement
		b4 b5 - warehouse
	)

	; Init
	(:init
		; Rovers
		(= (fuel-used) 0)
		(= (violations) 0)

		(parked r0 b0)
		(= (supplies r0) 0)
		(= (fuel r0) 21)

		(parked r1 b5)
		(= (supplies r1) 0)
		(= (fuel r1) 29)

		(parked r2 b4)
		(= (supplies r2) 0)
		(= (fuel r2) 21)

		(parked r3 b3)
		(= (supplies r3) 0)
		(= (fuel r3) 26)

		(parked r4 b1)
		(= (supplies r4) 0)
		(= (fuel r4) 22)

		; Supplies
		(is-in s0 b4)
		(is-in s1 b5)

		; Staff
		(is-in p0 b2)
		(is-in p1 b2)

		(needs-p3 p1 b2)
		(needs-p3 p0 b1)
		(needs-p1 s0 b5)
		(needs-p1 s1 b4)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

	; Metric
	(:metric minimize (+ (* (violations) 5) (* (fuel-used) 3)))
)

