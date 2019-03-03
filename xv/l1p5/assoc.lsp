(defun acclst(lst1 lst2)
	(cond
		((null lst1) nil)
		(t (cons (list (car lst1) (car lst2)) (acclst (cdr lst1) (cdr lst2))))
	)
)