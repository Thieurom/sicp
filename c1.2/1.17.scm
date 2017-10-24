;;; Assume that the languade can not multiply, design a multiplication procedure
;;; that uses a logarithmatic number of steps, provided that include operations
;;; `double, which doubles an integer, and `halve, which divides an (even) integer
;;; by 2.

(define (mult a b)
  (cond ((= a 0) 0)
        ((even? a) (double (mult (halve a) b)))
        (else (+ (mult (- a 1) b) b))))

(define (even? n)
  (= (remainder n 2) 0))

;; (define (double n)
;;   (* 2 n))

;; (define (halve n)
;;   (/ n 2))
