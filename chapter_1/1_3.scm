(define (square a)
     (* a a))

(define (sum-sqr-larger-two a b c)
  (- (+ (square a) (square b) (square c))
     (square (min a b c))))



