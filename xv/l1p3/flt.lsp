(defun flt(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (flt(cdr lst))))
		((listp (car lst)) (append (flt(car lst)) (flt (cdr lst))))
	)
)