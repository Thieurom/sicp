(define (f g) (g 2))

;; (f square)
;; => 4
;;
;; (f (lambda (z) (* z (+ z 1))))
;; 6


;; If we evaluate `(f f):
;; (f f)
;; (f 2)
;; => error because f requires its only argument has to be a procedure, not a value.
