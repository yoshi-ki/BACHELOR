10
(+ (- (* (* 1 2) 3) (* 4 5)) (+ (* 6 7) (* 8 9)))
(define a 100)
a
(define b (+ 10 1))
b
(if (< a b) 10 20)
(quote (+ 1 2))
(define f (lambda (x) (+ x 1)))
(f 10)

(let ((a 10) (b (f a)) (c (- b 1)))
(let ((a 10) (b (f a)) (c (- b 1)))
(+ (+ a b) c)
)
)
