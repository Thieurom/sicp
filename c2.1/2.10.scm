;;; Exercise 2.10

(define (sub-interval x y)
  (if (<= (* (lower-bound y)
             (upper-bound y))
          0)
      (error "Division error: interval spans 0")
      (mul-interval x
                    (make-interval (/ 1.0 (upper-bound y))
                                   (/ 1.0 (lower-bound y))))))
