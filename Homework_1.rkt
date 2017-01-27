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
  (cond  ((null? L) 0)
         (((not(list? L))sum-up-numbers-general(car L))
          ((null? L) 0
        
         
         (sum-up-numbers-simple(car L)))
    ((not(null? L)sum-up-numbers-simple L))))
        
             
        