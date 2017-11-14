;;; Exercise 2.57

;; (define (augend s) (cddr s))
(define (augend s)
  (let ((aug (cddr s)))
    (if (null? (cdr aug))
      (car aug)
      (make-sum (car aug) (cadr aug)))))


;; (define (multiplicand p) (cddr p))
(define (multiplicand p)
  (let ((mult (cddr s)))
    (if (null? (cdr mult))
      (car mult)
      (make-sum (car mult) (cadr mult)))))
