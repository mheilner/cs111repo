
(define (my-filter func lst)
      (cond
          ((null? lst) nil)
          ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
          (else nil (my-filter func (cdr lst)))
      )
)

(define (interleave s1 s2) 
      (cond
          ((and (null? s1) (null? s2)) nil)
          ((null? s1) (append (list (car s2)) (interleave s1 (cdr s2))))
          ((null? s2) (append (list (car s1)) (interleave (cdr s1) s2)))
          (else (append (list (car s1)) (list (car s2)) (interleave (cdr s1) (cdr s2))))           
      )
)

(define (accumulate merger start n term)
      (cond
          ((= n 0) start)
          (else (merger (term n) (accumulate merger start (- n 1) term)))
      )
)

(define (no-repeats lst)
      (cond
          ((null? lst) nil)
          (else  
          (cons (car lst) (no-repeats(my-filter (lambda (x) (not(= x (car lst)))) (cdr lst))))
          )
      )

)


