
(define (my-gcd a b)
(if (< a b)
(if (= 0 (modulo b a)) a (my-gcd a (modulo b a)))
(if (= 0 (modulo a b)) b (my-gcd b (modulo a b)))
)
)
