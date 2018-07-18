(define (a-plus-abs-b) 
  ((if (> b 0) + -) a b))

;If b is greater than 0 add the two numbers, 
;otherwise add a to the negation of b.
