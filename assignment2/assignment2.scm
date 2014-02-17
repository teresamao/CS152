(define nest 
    (lambda (x) 
        (
            if(> x 0)
               (cons (nest (- x 1)) '())
               '())))