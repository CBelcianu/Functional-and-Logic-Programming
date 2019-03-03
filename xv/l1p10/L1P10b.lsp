(defun repl(lst e1 e2)
	(cond
		((= (car lst) e1) (cons e2 (cdr lst)))
		(t (cons (car lst) (repl (cdr lst) e1 e2)))
	)
)