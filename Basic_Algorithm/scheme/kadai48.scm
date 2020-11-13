(define (my-assoc x list)
(cond
((pair? list) (if (= (car (car list)) x) (car list) (my-assoc x (cdr list))))
((null? list) #f)
(else (if (= (car (car list)) x) (car list) (my-assoc x (cdr list))))
)
)
