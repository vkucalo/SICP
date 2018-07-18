(define (cube-root x)
  (cube-iter 1.0 2.0 x))

(define (cube-iter oldguess guess x)
  (if (good-enough? oldguess guess x) 
      guess
      (cube-iter guess (improve-guess guess x) x)))

(define (good-enough? oldguess guess x)
  (< (abs(- oldguess guess)) (* guess 0.001)))

(define (improve-guess guess x)
  (avg  (/ x (square guess)) guess guess))

(define (avg a b c)
  (/ (+ a b c) 3))

(define (square x)
  (* x x))
	