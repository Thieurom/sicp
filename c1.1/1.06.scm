; define new version of `if
(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


; uses `new-if to rewrite the square-root program
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
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


; example of computing square-root of 25
; (sqrt 25)
; this will run infinitely.
;
; step 1: (sqrt-iter 1.0 25)
; step 2: (new-if (good-enough? 1.0 25)
;                 1.0
;                 (sqrt-iter (improve 1.0 25) 25))
;
; at this point, the inpreter will evaluate the arguments passed to `new-if procedure,
; which are `(good-enough? 1.0 25) and `(sqrt-iter (improve 1.0 25) 25)
; former one will return either true or false, and we temporarily ignore this step
; but latter will come back step 1 with new guess value being passed, which is `(1.0 + 25/1.0)/2) = 13
;
; step 3: (sqrt-iter 13.0 25)
; step 4: (new-if (good-enough? 13.0 25)
;                 1.0
;                 (sqrt-iter (improve 13.0 25) 25))
; and this will continue running forover because having no terminating condition.
; even at some point it will get the `guess value that's good enough
; because it doesn't stop `sqrt-iter running on the continueously-improved guess
