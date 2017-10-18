; Implement a procedure that computes cube roots
; by using Newton's method of successive approximation

(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x)
             guess))
     (* 0.0001 guess)))


; (cube-root 8)          => 2.000004911675504
; (cube-root 27)         => 3.0000005410641766
; (cube-root 0.000064    => 0.040000014846948234
; (cube-root 125000000)  => 500.0001973819974 
