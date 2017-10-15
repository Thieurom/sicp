(define (sum-squares-two-largers a b c)
  (if (< a b)
    (if (< a c)
      (+ (square b) (square c))
      (+ (square a) (square b)))
    (if (< b c)
      (+ (square a) (square c))
      (+ (square a) (square b)))))


(define (square x)
  (* x x))
