(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r0 r1 r2 - rover
		s0 s1 - supply
		p0 p1 - person
		b0 b1 - settlement
		b2 b3 - warehouse
	)

	; Init
	(:init
		; Rovers
		(= (fuel-used) 0)
		(= (violations) 0)

		(parked r0 b1)
		(= (supplies r0) 0)
		(= (fuel r0) 4)

		(parked r1 b1)
		(= (supplies r1) 0)
		(= (fuel r1) 2)

		(parked r2 b0)
		(= (supplies r2) 0)
		(= (fuel r2) 2)

		; Supplies
		(is-in s0 b3)
		(is-in s1 b3)

		; Staff
		(is-in p0 b0)
		(is-in p1 b0)

		(needs-p1 p1 b1)
		(needs-p1 p0 b1)
		(needs-p1 s1 b2)
		(needs-p2 s0 b2)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)

	; Metric
	(:metric minimize (violations))
)

