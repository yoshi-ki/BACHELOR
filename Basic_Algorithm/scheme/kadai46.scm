(define (my-length l)
  (if (null? l)
      0
      (+ 1 (my-length (cdr l)))))
(define (sum-total l)
(if (= (my-length l) 1) (car l) (+ (car l) (sum-total (cdr l))))
)
