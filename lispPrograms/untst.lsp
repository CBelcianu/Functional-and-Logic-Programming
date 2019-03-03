(defun ceva(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun elim(lst)
	(cond
		((null lst) nil)
		((member (car lst) (cdr lst)) (elim(cdr lst)))
		(t (cons (car lst) (elim (cdr lst))))
	)
)

(defun main(lst)
	(elim (ceva lst))
)