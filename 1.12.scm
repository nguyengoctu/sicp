(define (pascal-triangle row col)
        (cond ((= row 1) 1)
            ((= col 1) 1)
            ((= row 0) 0)
            ((= col 0) 0)
            ((> col row) 0)
            ((= col row) 1)
            (else (+ (pascal-triangle (- row 1) (- col 1)) (pascal-triangle (- row 1) col)))))

(pascal-triangle 3 3) ;1
(pascal-triangle 4 3) ;3
(pascal-triangle 1 1) ;1