(defun elim(lst)
	(cond
		((null lst) nil)
		((member (car lst) (cdr lst)) (elim(cdr lst)))
		(t (cons (car lst) (elim (cdr lst))))
	)
)

(defun isSet(lst)
	(cond
		((equal lst (elim lst)) "is set")
		(t "is not a set")
	)
)