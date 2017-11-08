;;; Exercise 2.30

(define (square-tree tree)
  (cond
    ((null? tree) nil)
    ((not (pair? tree))
          (square tree))
    (else (cons (square-tree (car tree))
                (square-tree (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree-map sub-tree)
             (square sub-tree)))
       tree))


;; helpers
(define (square x) (* x x))

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))


;; eg
(define x (list 1
                (list 2 (list 3 4) 5)
                (list 6 7)))

(square-tree x)      ; (1 (4 (9 16) 25) (36 49))
(square-tree-map x)  ; (1 (4 (9 16) 25) (36 49))
 
