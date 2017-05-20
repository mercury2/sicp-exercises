(define (square x) (* x x))

(define (sqrt-iter guess x) 
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
    (< (abs (- (improve guess x) guess) ) 0.000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 2)