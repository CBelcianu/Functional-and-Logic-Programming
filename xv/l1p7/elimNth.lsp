(defun elim(lst n)
	(cond
		((= 1 n) (cdr lst))
		(t (cons (car lst) (elim (cdr lst) (- n 1))))
	)
)