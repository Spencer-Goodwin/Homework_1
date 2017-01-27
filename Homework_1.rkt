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
(define (_min L2)
      (cond
        ((null? (car L2)) 0)
        ((<(car L2)0) (_min(car L2)(cdr L2)))))
(define (min-above-min L1 L2)
  (cond
    ((null? L2) min L1)
    ((null? L1) #F)
    
    ((number? (car L1));)(min-above-min (cdr L1)))
    (<(_min L2)(car L1)))));car L1)))
     
     ;(Let ((L2s)(min L2))
             
        