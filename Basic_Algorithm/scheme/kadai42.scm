(define (fib2 num)
(fib3 num 1 0)
)
(define (fib3 num a b)
(cond
((= num 0) 0 )
((= num 1) a )
(else (fib3 (- num 1) (+ a b) a))
)
)
