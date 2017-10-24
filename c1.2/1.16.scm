(define (fast-expt a n)
  (fast-expt-iter a n 1))

(define (fast-expt-iter a n product)
  (cond ((= n 0) product)
        ((even? n) (fast-expt-iter (square a) (/ n 2) product))
        (else (fast-expt-iter a (- n 1) (* product a))))) 

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))
