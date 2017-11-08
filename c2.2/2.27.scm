;;; Exercise 2.27

(define (deep-reverse items)
  (define (iter items result)
    (if (null? items)
        result
        (let ((first (car items))
              (rest (cdr items)))
          (if (pair? first)
              (iter rest
                    (cons (iter first nil) result))
              (iter rest
                    (cons first result))))))
  (iter items nil))

(deep-reverse (list (list 1 2) (list 3 4)))  ; ((1 2) (3 4)) => ((4 3) (2 1))
