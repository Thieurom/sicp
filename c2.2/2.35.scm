;;; Exercise 2.35

(define (count-leaves tree)
  (accumulate +
              0
              (map (lambda (sub-tree)
                     (cond
                       ((null? sub-tree) 0)
                       ((not (pair? sub-tree)) 1)
                       (else (count-leaves sub-tree))))
                    tree)))
