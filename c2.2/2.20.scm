;;; Exercise 2.20

(define (same-parity first . rest)
  (define (same-parity? n)
    (= (remainder first 2)
       (remainder n 2)))
  (define (parity-iter items)
    (cond ((null? items) nil)
          ((same-parity? (car items))
           (cons (car items)
                 (parity-iter (cdr items))))
          (else (parity-iter (cdr items)))))
  (cons first (parity-iter rest)))


(same-parity 1 2 3 4 5 6 7)  ; => (1 3 5 7)
(same-parity 2 3 4 5 6 7)    ; => (2 4 6)
