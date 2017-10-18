; the program compute square root of number
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))


; (sqrt 25)            => 5.000023178253949
; (sqrt 36)            => 6.000000005333189
; (sqrt 0.0009)        => 0.04030062264654547 
; (sqrt 250000000000)  => stacked overflow
;
; With the above implementation of `good-enough? procedure, the `sqrt will
; fail to find square roots of very small numbers and very large numbers.
;
; In case of very small numbers (or just smaller than 0.0001), the `guess
; value will soon decrease from 1.0 (initial value) to a small value so
; that `guess^2 will be around 0.0001.
; At this point, the `good-enough? will satisfy even the current guess is
; actually not good enough. It just needs to be small enough so that
; `|guess^2 - x| < 0.0001
;
; In case of very large numbers, there are 2 types of failed computation.
; First if the given value or intemediate value (result of square computation)
; is too large, it will causes integer overflow.
; Second is due to computer's limited precision. When the `guess value becomes
; near the good result, the `improve procedure will produce the same value with
; previous one of `guess. So the `good-enough? test never sastisfy because
; it still tests with the same, previously-fail value of `guess. And the
; program continue running until it gets stacked overflow.
;
; An alternative strategy for implementing good-enough? is to watch how guess
; changes from one iteration to the next and to stop when the change
; is a very small fraction of the guess

(define (good-enough? guess x)
  (< (abs (- guess
             (improve guess x)))
     (* 0.001 guess)))

; (sqrt 0.0009)        => 0.030000012746348552 
; (sqrt 250000000000)  => 500000.051730621
