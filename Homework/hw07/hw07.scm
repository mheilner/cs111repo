(define (cddr s) 
    (cdr (cdr s))
)

(define (cadr s)
    (car (cdr s))
)

(define (caddr s) 
    (car (cdr (cdr s)))
)

(define (ordered? s)
    (cond 
        ((null? (cdr s)) #t)
        ((>= (car (cdr s)) (car s)) (ordered? (cdr s))) 
        (else #f)
    )
)

(define (square x) (* x x))

(define (pow base exp)
    (cond 
        ((or (= base 1) (= exp 1)) base)
        ((= exp 2) (square base))
        ((odd? exp) (* base (pow base (- exp 1))))
        ((even? exp) (square (pow base (/ exp 2))))
    )
)
