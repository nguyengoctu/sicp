;define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

(define (square x)
    (* x x))

(define (sum-of-square x y)
    (+ (square x) (square y)))

(define (sum-of-square-of-two-larger-numbers a b c)
    (cond ((and (>= a c) (>= b c)) (sum-of-square a b))
        ((and (>= b a) (>= c a)) (sum-of-square b c))
        (else (sum-of-square c a))))

(sum-of-square-of-two-larger-numbers 1 2 3)
(sum-of-square-of-two-larger-numbers 2 2 3)