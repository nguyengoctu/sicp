(define (cube-root-iter x guess previous-guess)
    (if (good-enough? guess previous-guess)
        guess
        (cube-root-iter x (improve guess x) guess)))

(define (good-enough? guess oldguess)
    (< (abs (- guess oldguess)) 0.0000000000000001))

(define (improve guess x)
    (average guess (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)))

(define (average x y)
    (/ (+ x y) 2))

(define (cbrt x)
    (cube-root-iter x 1.0 0.0))

(cbrt 8)
(cbrt 0)
(cbrt -27)