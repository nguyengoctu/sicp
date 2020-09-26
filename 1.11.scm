(define (f n)
    (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

(f 5) ;25
(f 6) ;59
(f 3) ;3
(f 15); 142717

(define (fi n)
    (fi-iter 2 1 0 n))

(define (fi-iter f-1 f-2 f-3 count)
    (cond ((= 0 count) f-3)
        ((= 1 count) f-2)
        ((= 2 count) f-1)
        (else (fi-iter (+ f-1 (* 2 f-2) (* 3 f-3)) f-1 f-2 (- count 1)))))

(fi 5) ;25
(fi 6) ;59
(fi 3) ;3
(fi 15); 142717
(fi 2); 2