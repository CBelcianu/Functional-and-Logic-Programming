(defun replFirst(lst x y)
	(cond
		((null lst) nil)
		((= x (car lst)) (cons y (cdr lst)))
		(t (cons (car lst) (replFirst (cdr lst) x y)))
	)
)