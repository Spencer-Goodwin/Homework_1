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
(define (_min  m L2)
      (cond
      
        ((null? (car L2)) m)
        ((<(car L2) m) (_min(car L2)(cdr L2)))
        (t (_min m (cdr L2)))))
(define (min-above-min L1 L2)
  (cond
    ((null? L2) (_min `(1000)(L1)))
    ((null? L1) #F)
    (_min `(1000) (L2))
    ((number? (car L1));)(min-above-min (cdr L1)))
    (<(_min L2)(car L1)))((min-above-min (cdr L1)(cdr L2)))))
    ));car L1)))
     
     ;(Let ((L2s)(min L2))
             
        