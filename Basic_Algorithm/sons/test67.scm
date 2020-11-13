;環境について
(define (empty-frame)
  (list))
(define (update frame var val)
  (cons (cons var val) frame))
(define (lookup var frame)
  (assoc var frame))

(define (make-env)
  (list (empty-frame)))
(define (extend-env env)
  (cons (empty-frame) env))
(define (define-var env var val)
(if (null? env)
    env
    (cons (update (car env) var val) (cdr env))))
(define (lookup-var var env)
  (if (null? env)
      #f
      (let ((found (lookup var (car env))))
        (if (pair? found)
            found
        (lookup-var var (cdr env))))))

;λ閉包と組み込み関数
(define (make-closure env params body)
  (cons '*lambda* (cons env (cons params body))))
(define (data-closure? data)
  (and (pair? data) (equal? (car data) '*lambda*)))
(define closure-env cadr)
(define closure-params caddr)
(define closure-body cdddr)


(define (make-primitive arity fun)
  (list '*primitive* arity fun))
(define (data-primitive? data)
  (and (pair? data) (equal? (car data) '*primitive*)))
(define primitive-arity cadr)
(define primitive-fun caddr)

(define (print-data data)
  (cond ((data-closure? data) (display "#<closure>"))
        ((data-primitive? data) (display "#<primitive>"))
        ((equal? data '*unspecified*) (display "#<unspecified>"))
        ((equal? data '*error*) (display "#<error>"))
        ((equal? data '*exit*))
        (else (write data))))

;評価関数について
(define (base-eval env exp)
  (cond ((eof-object? exp) (cons env '*exit*))
        ((constant? exp) (cons env exp))
        ((symbol? exp) (var-eval env exp))
        ((not (pair? exp)) (eval-error env 'unknown-data exp))
        ((equal? (car exp) 'exit) (cons env '*exit*))
        ((equal? (car exp) 'define) (def-eval env exp))
        ((equal? (car exp) 'let) (let-eval env exp))
        ((equal? (car exp) 'letrec) (letrec-eval env exp))
        ((equal? (car exp) 'lambda) (lambda-eval env exp))
        ((equal? (car exp) 'if) (if-eval env exp))
        ((equal? (car exp) 'begin) (begin-eval env exp))
        ((equal? (car exp) 'quote) (quote-eval env exp))
        (else (app-eval env exp))))

;ここから上の中身のコード
  ;constant
  (define (constant? exp)
    (or (boolean? exp) (number? exp) (string? exp)))

  ;error処理
  (define (eval-error env type exp)
    (display "ERROR: ")
    (write type)
    (display ": ")
    (print-data exp)
    (newline)
    (cons env '*error*))

  ;letの処理
  (define (let-eval env exp)
  (if (correct-syntax? 'let exp)
      (base-eval env (let->app exp))
      (eval-error env 'syntax-error exp)))
  (define (let->app exp)
    (let ((decl (cadr exp))
          (body (cddr exp)))
      (cons (cons 'lambda (cons (map car decl) body))
            (map cadr decl))))
  (define (correct-syntax? type exp) #t)

  ;defineの実装
  (define (def-eval env exp)
  (if (correct-syntax? 'define exp)
      (let* ((var (cadr exp))
             (res (base-eval env (caddr exp)))
             (env (car res))
             (val (cdr res)))
        (cons (define-var env var val) var))
      (eval-error env 'syntax-error exp)))

  ;var-evalの実装
  (define (var-eval env exp)
    (cons env (cdr(lookup-var exp env))))

  ;lambda eval
  (define (lambda-eval env exp)
    (if (correct-syntax? 'lambda exp)
        (cons env (make-closure env (cadr exp) (cddr exp)))
        (eval-error env 'syntax-error exp)))

  ;if-evalの実装
  (define (if-eval env exp)
    (let
      ((res (base-eval env (cadr exp))))
    (if (cdr res)
      (cons (car res) (cdr (base-eval (car res) (caddr exp))))
      (cons (car res) (cdr (base-eval (car res) (cadddr exp)))))))

  ;quote-evalの実装
  (define (quote-eval env exp)
    (cons env (car (cdr exp))))

  ;mapbaseevalリストの各要素を関数適用前に評価する関数
  ;define式に未対応
  (define (map-base-eval env el)
    (cons env
      (map (lambda (exp) (cdr (base-eval env exp))) el)))

  ;appeval
  (define (app-eval env exp)
  (if (correct-syntax? 'app exp)
      (let* ((l (map-base-eval env exp))
             (env (car l))
             (fun (cadr l))
             (args (cddr l)))
        (base-apply env fun args))
      (eval-error env 'synatx-error exp)))

  ;base-apply関数適用する関数
  (define (base-apply env fun args)
    (cond ((data-closure? fun)
      ;; 引数が一個か2個か3個で場合分けを行う
      (if (null? (cdr args))
      (let (
        (env2 (define-var (cadr fun) (car (caddr fun)) (car args)))
        )
        (cons env (cdr (base-eval env2 (cadddr fun))))
            )
      (if (null? (cddr args))
      (let* (
      (env2 (define-var (cadr fun) (car (caddr fun)) (car args)))
      (env3 (define-var env2 (cadr (caddr fun))(cadr args)))
      )(cons env (cdr (base-eval env3 (cadddr fun)))))
      (let* (
      (env2 (define-var (cadr fun) (car (caddr fun)) (car args)))
      (env3 (define-var env2 (cadr (caddr fun))(cadr args)))
      (env4 (define-var env3 (caddr (caddr fun))(caddr args)))
      )(cons env (cdr (base-eval env4 (cadddr fun))))))))


          ((data-primitive? fun)
           (if (or (not (number? (primitive-arity fun)))
                   (= (primitive-arity fun) (length args)))
               ((primitive-fun fun) env args)
               (eval-error env 'wrong-number-of-args fun)))
          (else
           (eval-error env 'non-function fun))))



  ;組み込み関数データを関数名に割り当てる
  (define (make-top-env)
    (let* ((env (make-env))
          (env
            (define-var env '=
              (make-primitive 2 (lambda (env args)
                                  (cons env (= (car args) (cadr args)))))))
          (env
            (define-var env '+
              (make-primitive 2 (lambda (env args)
                                  (cons env (+ (car args) (cadr args)))))))
          (env
            (define-var env '*
              (make-primitive 2 (lambda (env args)
                                  (cons env (* (car args) (cadr args)))))))
          (env
            (define-var env '-
              (make-primitive 2 (lambda (env args)
                                  (cons env (- (car args) (cadr args)))))))
          (env
            (define-var env '>
              (make-primitive 2 (lambda (env args)
                                  (cons env (> (car args) (cadr args)))))))
          (env
            (define-var env '<
              (make-primitive 2 (lambda (env args)
                                  (cons env (< (car args) (cadr args)))))))
          (env
            (define-var env 'list
              (make-primitive #f (lambda (env args) (cons env args)))))
          (env
            (define-var env 'cons
              (make-primitive 2 (lambda (env args) (cons env (cons (car args) (cadr args)))))))
          (env
            (define-var env 'car
              (make-primitive 1 (lambda (env args) (cons env (car (car args)))))))
          (env
            (define-var env 'cdr
              (make-primitive 1 (lambda (env args) (cons env (cdr (car args)))))))
          (env
            (define-var env 'null?
              (make-primitive 1 (lambda (env args)
                                  (cons env (null? (car args)))))))
          (env
            (define-var env 'equal?
              (make-primitive 2 (lambda (env args)
                                  (cons env (equal? (car args) (cadr args)))))))
          (env
                (define-var env 'display
           (make-primitive
            1
            (lambda (env args)
              (display (car args))
              (cons env '*unspecified*)))))
                (env
                (define-var env 'load ; load に関しては理解できなくもよい
                    (make-primitive
                    1
                    (lambda (env args)
                      (with-input-from-file (car args)
                        (lambda ()
                          (define (re-loop env)
                            (let* ((res (base-eval env (read)))
                                   (env (car res))
                                   (val (cdr res)))
                              (if (equal? val '*exit*)
                                  (cons env '*unspecified*)
                                  (re-loop env))))
                          (re-loop env))))))))
          env))


;schemeのdefine
(define (scheme)
  (let ((top-env (make-top-env)))
    (define (rep-loop env)
      (display "sister> ")
      (let* ((res (base-eval env (read)))
             (env (car res))
             (val (cdr res)))
        (print-data val)
        (newline)
        (if (equal? val '*exit*)
            #t
            (rep-loop env))))
    (rep-loop top-env)))
