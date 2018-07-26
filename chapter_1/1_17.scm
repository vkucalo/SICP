(define (halve a) (/ a 2))
(define (double a) (+ a a))
(define (* a b)
    (if (= a 1) b
        (if (even? a) (* (halve a) (double b))
        	(+ (* (- a 1) b) b))))