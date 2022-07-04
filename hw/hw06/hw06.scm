(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s)))

(define (caddr s) 
    (car (cddr s)))

(define (ascending? lst) 
    (cond 
        ((null? lst) #t)
        ((null? (cdr lst)) #t)
        ((< (cadr lst) (car lst)) #f)
        (else (ascending? (cdr lst)))
    )
)

(define (interleave lst1 lst2)
    (cond
        ((null? lst1) lst2)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))
    )
)

(define (my-filter func lst)
    (cond
        ((null? lst) nil)
        ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
        (else (my-filter func (cdr lst)))
    )
)

(define (no-repeats lst)
    (cond 
        ((null? lst) nil)
        (else 
            (cons 
                (car lst)
                (no-repeats
                    (filter
                        (lambda (x) (not (= x (car lst))))
                        (cdr lst)
                    )
                )
            )
        )
    )
)
