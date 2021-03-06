(define (my-gcd a b)
(if (< a b)
(if (= 0 (modulo b a)) a (my-gcd a (modulo b a)))
(if (= 0 (modulo a b)) b (my-gcd b (modulo a b)))
)
)
(define (rational a b)
(cond ((= a 0) (cons 0 1))
  ((> a 0) (cons (/ a (my-gcd a b)) (/ b (my-gcd a b))))
  ((< a 0) (cons (/ a (my-gcd (* a -1) b)) (/ b (my-gcd (* a -1) b))))
)
)
(define (rat= r1 r2)
(and (= (car r1) (car r2)) (= (cdr r1) (cdr r2)))
)
(define (rat+ r1 r2)
  (rational (+ (* (car r1) (cdr r2)) (* (cdr r1) (car r2))) (* (cdr r1) (cdr r2)))
)
(define (rat* r1 r2)
  (rational (* (car r1) (car r2)) (* (cdr r1) (cdr r2)))
)
