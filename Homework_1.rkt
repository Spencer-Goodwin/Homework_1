;//Function number one
(define (reverse-general L)
  (cond ((null? L) '())
        ((list? L)
         (append (reverse-general (cdr L))
               (list (reverse-general (car L)))
               )
         )
        (else L)
        )
  )

;//Function number two


(define (sum-up-numbers-simple L)
  (cond ((null? L) 0)
        ((number? (car L))
         (+ (car L) (sum-up-numbers-simple (cdr L)))) ((sum-up-numbers-simple (cdr L)))))
;//Function number three
(define (sum-up-numbers-general L)
  (cond ((null? L) 0)
         ((list? (car L))(sum-up-numbers-general (car L)))
         ((number? (car L))
         (+ (car L) (sum-up-numbers-general (cdr L)))) ((sum-up-numbers-general (cdr L)))))
;//Function number four
Read in the numbers in L2 First
L1 has to be greater than the smallest number in L2
        The result is the smallest number in L2
thats greater than the smallest number in L2
             
        