;;; Procedure computes the value of the k-term finite continued fraction.

;; 1. Generate recursive process
(define (cont-frac-recur num den k)
  (define (recur n)
    (if (> n k)
        0
        (/ (num n)
           (+ (den n)
              (recur (+ n 1))))))

  (recur 1))


;; 2. Generate iterative process
(define (cont-frac-iter num den k)
  (define (iter n result)
    (if (> n k)
        result
        (iter (+ n 1)
              (/ (num n)
                 (+ (den n)
                    result)))))

  (iter 1 0))


;; Approximate 1/φ (φ - golden ratio)
(cont-frac-recur (lambda (i) 1.0)
                 (lambda (i) 1.0)
                 100)
;; => 0.6180339887498948 => k = 100, we get approximation that is accurate 10 decimal places. 

(cont-frac-recur (lambda (i) 1.0)
                 (lambda (i) 1.0)
                 11)
;; => 0.6180555555555556 => k = 11, result is accurate 4 decimal places
