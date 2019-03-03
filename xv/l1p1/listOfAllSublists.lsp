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

(defun aux(lst)
	(cond
		((null lst) nil)
		((and (listp (car lst)) (interm (car lst))) (cons (car lst) (aux (cdr lst))))
		((listp (car lst)) (cons (car lst) (cons (aux (car lst)) (aux (cdr lst)))))
		((numberp (car lst)) (aux (cdr lst)))
	)
)

(defun main(lst)
	(cons lst (aux lst))
)