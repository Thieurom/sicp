;;; Exercise 2.21

(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list (cdr items)))))


(define (square-list-alt items)
  (map square items))


;; Helpers
(define (map proc items)
  (if (null? items)
    nil
    (cons (proc (car items))
          (map proc (cdr items)))))


(define (square n) (* n n)) 


;; eg
(square-list (list 1 2 3 4))      ; => (1 4 9 16)
(square-list-alt (list 1 2 3 4))  ; => (1 4 9 16)
