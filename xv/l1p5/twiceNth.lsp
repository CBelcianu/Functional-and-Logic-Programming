(defun twn(lst n)
	(cond
		((= 1 n) (cons (car lst) (cons (car lst) (cdr lst))))
		(t (cons (car lst) (twn (cdr lst) (- n 1))))
	)
)