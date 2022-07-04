(define (over-or-under num1 num2) (cond ((= num1 num2) 0)
                                       ((> num1 num2) 1)
                                       (else -1)))

(define (make-adder num) (lambda (inc) (+ num inc)))

(define (composed f g) (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (pow base exp) (
    cond 
        ((= exp 1) base)
        ((= (modulo exp 2) 1) (* base (pow base (- exp 1))))
        (else (square (pow base (/ exp 2))))
        )
)
