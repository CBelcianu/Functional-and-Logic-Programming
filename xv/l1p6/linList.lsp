(defun ceva(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun interm(lst)
	(cond
		((equal lst (ceva lst)) T)
		(t nil)
	)
)