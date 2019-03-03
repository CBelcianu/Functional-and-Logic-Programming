;COMPUTE THE SUM OF ALL NUMERICAL ATOMS IN A LIST AT A SUPERFICIAL LEVEL

;listsum - returns the sum of all the numbers in a list
;listsum(l1..ln)= 0, L=[]
;				  l1+sum(l2..ln), l1-number
;				  sum(l2..ln), otherwise

(defun listsum (ls)
  (cond 
  	((null ls) 0)
    ((numberp (car ls)) (+ (car ls) (listsum (cdr ls)))
    )
    ((not (numberp (car ls))) (+ 0 (listsum (cdr ls)))
    )
  )
)

;deepsum - 0, L=[]
;deepsum(l1..ln)= listsum(l1)+deepsum(l2..ln), l1-list
;				  l1+deepsum(l2..ln), l1-number
;				  deepsum(l2..ln), otherwise

(defun deepsum (ls)
	(cond
		((null ls) 0)
		((listp (car ls)) (+ (listsum (car ls)) (deepsum (cdr ls)))
		)
		((numberp (car ls))	(+ (car ls) (deepsum (cdr ls)))
		)
		((not (numberp (car ls))) (+ 0 (deepsum (cdr ls)))
		)
	)
)