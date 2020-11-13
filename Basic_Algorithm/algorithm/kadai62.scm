(define (merge a b)
(if (null? a ) b
  (if(null? b) a
    (if (string<? (car a) (car b))
      (cons (car a) (merge (cdr a) b))
      (cons (car b) (merge (cdr b) a))
    )
  )
)
)

(define (len l)
(if (null? l) 0 (+ 1 (len(cdr l))))
)

(define (split1 l num)
  (if (= num 0) (list )
    (cons (car l) (split1 (cdr l) (- num 1)))
  )
)

(define (split2 l num)
  (if (= num 0) l
    (split2 (cdr l) (- num 1))
  )
)

(define (my-odd? n)
  (cond ((= n 0) #f)
        ((< n 0) (my-even? (+ n 1)))
        (else (my-even? (- n 1)))))
(define (my-even? n)
  (cond ((= n 0) #t)
        ((< n 0) (my-odd? (+ n 1)))
        (else (my-odd? (- n 1)))))

(define(my-sort l)
(if (my-even? (len l))
(cond
((null? l) l)
((null? (cdr l)) l)
(else (merge (my-sort (split1 l (/ (len l) 2))) (my-sort (split2 l (/ (len l) 2)))))
)
(cond
((null? l) l)
((null? (cdr l)) l)
(else (merge (my-sort (split1 l (/ (+ (len l) 1) 2))) (my-sort (split2 l (/ (+ (len l) 1) 2))))))
)
)
