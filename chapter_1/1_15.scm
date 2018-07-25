(define (cube x) 
  (* x x x))

(define (p x)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))

; a) the p function is applied 5 times.
; b) both the space and time of sine grow in log(n) time
