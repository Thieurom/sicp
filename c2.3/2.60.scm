;;; Exercise 2.60

;; Define set as a normal list that allow duplicates.

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set1)) true)
        (else (element-of-set? x (cdr set)))))

;; the number of steps required grows as Θ(n)


(define (adjoin-set x set)
  (cons x set))

;; the number of steps required grows as constant


(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2))
         '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1)
                                 set2)))
        (else (intersection-set (cdr set1)
                                set2))))

;; the number of steps required grows as Θ(n^2)


(define (union-set set1 set2)
  (if (null? set1)
      set2
      (adjoin-set (car set1)
                  (union-set (cdr set1)
                             set2))))

;; the number of steps required grows as Θ(n)


;; Conclusion: compare with the non-duplicate representation,
;; adjoin-set reduces from Θ(n) to constant time
;; union-set reduces from θ(n^2) to Θ(n)
