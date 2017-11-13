;;; Exercise 2.54

(define (equal? x y)
  (if (and (pair? x) (pair? y))
      (and (equal? (car x) (car y))
           (equal? (cdr x) (cdr y)))
      (eq? x y)))


(equal? '(this is a list)
        '(this is a list))    ; => true

(equal? '(this is a list)
        '(this (is a) list))  ; => false
