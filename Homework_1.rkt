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
;(define (make-new L)
 ; (cond ((null? L) 0)
  ;      ((number? (car L))(cons(append (make-new (cdr L))
   ;                               (list (make-new (car L)))
    ;                              )))(()))
(define (-min  m L)
      (cond
        ((null? L) 0)
        ;((not(list? L) 0))
        ((not(number? (car L)))(-min m (cdr L)))
        
        ((<(car L) m) (-min(car L)(cdr L)))
        (t (-min m (cdr L)))))
(define (min-above-min L1 L2)
  (cond
    ;((not(list?)
    ;((null? L2) (-min 1000 (L1)))
    ((null? L1) #F)
    ((not(number? (car L2)))(min-above-min L1 (cdr L2)))
    ((not(number? (car L1)))(min-above-min (cdr L1) L2))
    ;((list? L2)(-min 1000 L2))
    ((<(car L1)(min-above-min (cdr L1)L2))(car L1))))
 
    ;((list? L2)(-min 1000 L2)
               
    ;(<(min (car L2)(car L1))))((min-above-min (cdr L1)(cdr L2)))))
    
    
             
        