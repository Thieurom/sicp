;; A procedure that takes a procedure of one argument as argument
;; and returns a procedure that applies the original procedure twice.
(define (double f)
  (lambda (x)
    (f (f x))))


;; A procedure that adds 1 to its argument
(define (inc x)
  (+ x 1))


;; (((double (double double)) inc) 5)  => 21
