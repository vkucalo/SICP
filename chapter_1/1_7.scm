;The good-enough? test will not be effective for small numbers, since the treshold is too tolerant. For larger numbers the 
;computation will be too slow.

(define (sqrt x)
  (sqr-iter 1.0 2.0 x))

(define (sqr-iter oldguess guess x)
  (if (good-enough? oldguess guess)
      guess
      (sqr-iter guess (improve-guess guess x) x)))

(define (good-enough? oldguess guess)
  (< (abs (- oldguess guess)) (* guess 0.0001)))


(define (improve-guess guess x)
  (avg guess (/ x guess)))

(define (avg x y)
  (/ (+ x y) 2))




    


               
