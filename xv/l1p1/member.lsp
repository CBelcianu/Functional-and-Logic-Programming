;R1

(defun flt(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (flt(cdr lst))))
		((atom (car lst)) (cons (car lst) (flt(cdr lst))))
		((listp (car lst)) (append (flt(car lst)) (flt (cdr lst))))
	)
)

(defun isPart(lst X)
	(cond
		((null lst) nil)
		((= (car lst) X) T)
		(t (isPart (cdr lst) X))
	)
)

(defun main(lst X)
	(isPrart(flt lst) X)
)