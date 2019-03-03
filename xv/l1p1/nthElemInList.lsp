(defun nthel (lst n)
	(cond
		((null lst) nil)
		((not (= n 0)) (nthel (cdr lst) (- n 1)))
		((= n 0) (car lst))
	)
)