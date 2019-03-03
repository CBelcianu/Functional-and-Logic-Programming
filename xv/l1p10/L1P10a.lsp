(defun prod(lst)
	(cond
		((null lst) 1)
		((numberp (car lst)) (* (car lst) (prod(cdr lst))))
		((listp (car lst)) (* 1 (prod (cdr lst))))
	)
)