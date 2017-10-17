(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; The above procedure computes the sum of a and absolute value of b.
