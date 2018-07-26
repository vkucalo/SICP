(define (* a b)
  (define (halve a) (/ a 2))
  (define (double a) (+ a a))
  (define (fast-mul a b c)
    (cond ((= a 0) c)
          ((even? a) (fast-mul (halve a) (double b) c))
          (else (fast-mul (- a 1) b (+ c b)))))
  (fast-mul a b 0))