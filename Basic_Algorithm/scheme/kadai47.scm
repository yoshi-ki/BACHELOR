(define (append a b)
(cond ((null? a) b)
      ((and (pair? a) (pair? b))(cons (car a) (append (cdr a) b)))
      ((and (pair? a) (not (pair? b) )) (append a (list b)))
      (else  (cons a b))
)
)
(define (my-reverse l)
  (cond
    ((null? l) l)
    ((null? (cdr l)) l)
    ((pair? l) (append (my-reverse (cdr l)) (car l)))
  )
)　
