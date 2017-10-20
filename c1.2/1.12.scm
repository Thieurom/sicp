;;; procedure that computes elements of Pascal’s triangle by means of a recursive process
;;; row and col are row and column of being computed element
;;; row >= 1, 1 <= col <= row
(define (pascal row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))
