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