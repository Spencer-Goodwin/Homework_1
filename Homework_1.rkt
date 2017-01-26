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
  (cond
    ((null? L) 0)
     (else (number? (car L))
           (+ (sum-up-numbers-simple(cdr L))
           (+ (car L) (sum-up-numbers-simple (cdr L)))
   ))))
