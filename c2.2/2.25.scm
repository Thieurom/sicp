;;; Exercise 2.25

;; Pick 7 from the lists
(define list-a (list 1 3 (list 5 7) 9))        ; (1 3 (5 7) 9)
(car                                           ; 7 <=
  (cdr                                         ; (7)
    (car                                       ; (5 7)
      (cdr                                     ; ((5 7) 9)
        (cdr list-a)))))                       ; (3 (5 7) 9)


(define list-b (list (list 7)))                ; ((7))
(car                                           ; 7 <=
  (car list-b))                                ; (7)


(define list-c (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
                                               ; (1 (2 (3 (4 (5 (6 7))))))
(car                                           ; 7 <=
  (cdr                                         ; (7)
    (car                                       ; (6 7)
      (cdr                                     ; ((6 7))
        (car                                   ; (5 (6 7))
          (cdr                                 ; ((5 (6 7)))
            (car                               ; (4 (5 (6 7)))
              (cdr                             ; ((4 (5 (6 7))))
                (car                           ; (3 (4 (5 (6 7))))
                  (cdr                         ; ((3 (4 (5 (6 7)))))
                    (car                       ; (2 (3 (4 (5 (6 7)))))
                      (cdr list-c))))))))))))  ; ((2 (3 (4 (5 (6 7))))))
