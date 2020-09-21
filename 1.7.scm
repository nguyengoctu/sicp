(define (sqrt-iter x guess oldguess)
    (if (good-enough? guess oldguess)
        guess
        (sqrt-iter x (improve guess x) guess)))

(define (sqrt x)
    (sqrt-iter x 1.0 0.0))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess oldguess)
    (< (abs (- guess oldguess)) 0.0000000000000001))

(sqrt 2)