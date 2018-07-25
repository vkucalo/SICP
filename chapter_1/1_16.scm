(define (fast-expt n exponent)
  (define (sqr a) (* a a))
  (define (fast-iter a n exponent)
    (if (= exponent 0) a
        (if (even? exponent) 
            (fast-iter a (sqr n) (/ exponent 2))
            (fast-iter (* a n) n (- exponent 1)))))
  (fast-iter 1 n exponent))