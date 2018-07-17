;The good-enough? test will not be effective for small numbers, since the treshold is too tolerant. For larger numbers the 
;computation will be too slow.
#lang racket

(define (sqr-iter guess x)
  (cond ((good-enough? guess x) guess)
        (else (sqr-iter (improve guess x ) x))))

(define (good-enough? guess x prev-guess)
  (if (< (- prev-guess guess) 0.0001)
    (#f)
    (good-enough? (improve guess x) x guess)))

(define (avg x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (avg x (/ x guess)))

(define (good-enough? 




    


               
