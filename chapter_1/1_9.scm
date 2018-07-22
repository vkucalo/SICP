(define (+ a b)
	(if (= a 0)
		b
		(inc (+ (dec a) b))))

(define (+ a b)
	(if (= a 0)
		b
		(+ (dec a) (inc b))))



; The first process is recursive, while the second is iterative. 
