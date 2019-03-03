(defun in246(lst x el)
	(cond
		((null lst) nil)
		((= 0 (mod x 2)) (cons (car lst) (cons el (in246 (cdr lst) (+ x 1) el))))
		(t (cons (car lst) (in246 (cdr lst) (+ x 1) el)))
	)
)