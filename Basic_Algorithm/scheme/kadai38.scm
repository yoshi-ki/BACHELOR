(define (min-of-four a b c d)
(if(and (<= a b) (<= a c) (<= a d)) a
(if(and (<= b a) (<= b c) (<= b d)) b
(if(and (<= c a) (<= c b) (<= c d)) c
(if(and (<= d a) (<= d b) (<= d c)) d )))))
