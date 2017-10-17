(define (p) (p))    ; (1)

(define (test x y)  ; (2)
  (if (= x 0)
    0
    y))

(test 0 (p))        ; (3)

;; When (3) runs:
;;
;; If intepreter uses application-order evaluation:
;;   first it will evaluate (3) with given arguments
;;   (test 0 (p)) will become (test 0 (p))
;;   and the intepreter will repeat with this newly-returned combination.
;;   therefore the evaluation will loop infinitely without terminating.
;;
;; If intepreter uses normal-order evaluation:
;;   first it will evaluation (3)
;;   then it substitutes with body in (2)
;;     (if (= x 0)
;;       0
;;       y))
;;   Here intepreter get an expression with primitive operators so it will evaluate.
;;   The result of evaluation is 0, so procedure (3) will end with 0 value returned.
