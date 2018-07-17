(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (sqrt a)
  (sqr-iter 1 a))


(define (sqr-iter guess x)
  (cond ((good-enough? guess x) guess)
        (else (sqr-iter (improve guess x) x))))


(define (sqr-iter-hack guess x)
  (new-if (good-enough? guess x)
          guess
          (sqr-iter (improve guess x)
                    x)))

(define (good-enough? guess x)
  (< (abs (- x (* guess guess))) 0.001))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (avg x y)
  (/ (+ x y) 2))

; Applicative order evaluation evaluates all the operands before applying the operator, meaning the
; new-if procedure will never get executed due to sqr-iter being recursively called, causing a stack
; overflow.
