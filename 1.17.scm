(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (* a b)
    (cond ((= 0 b) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))

(* 4 5)
(* 1 0)
(* 9 4)
(* 4 9)

(define (* a b)
    (define (mul-iter state a b)
        (cond ((= b 0) state)
            ((even? b) (mul-iter state (double a) (halve b)))
            (else (mul-iter (+ state a) a (- b 1)))))
    (mul-iter 0 a b))