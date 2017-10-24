(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/dx 2.0)) add-dx b)
     dx))

(define (cube x) (* x x x))


;; Compute the integral of cube between 0 and 1:
;; (integral cube 0 1 0.01)       => 0.24998750000000042
;; (integral cube 0 1 0.001)      => 0.249999875000001
;; ---


;; If using Simpson’s Rule, the integral of a function f between a and b is
;; approximated as:
;;
;; I = h/3(y0 + 4y1 + 2y2 + 4y3 + 2y4 + ... + 2yn-2 + 4yn-1 + yn)
;;
;; where h = (b - a)/n, for some even integer n, and yk = f(a + kh)

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (next a) (+ a (* 2 h)))
  (* (/ h 3.0)
     (+ (f a)
        (* 4 (sum f (+ a h) next b))
        (* 2 (sum f (+ a (* 2 h)) next b))
        (f b))))

;; Compute the integral of cube between 0 and 1:
;; (simpson-integral cube 0 1 100)   => 0.2500000000000004
;; (simpson-integral cube 0 1 1000)  => 0.25000000000000083 

;; Compare the results we can see that Simpson's Rule is more accurate method
;; of numerical integration.
