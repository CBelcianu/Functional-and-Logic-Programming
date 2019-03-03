(defun replel(lst el lst1)
	(cond
		((null lst) nil)
		((listp (car lst)) (cons (replel (car lst) el lst1) (replel (cdr lst) el lst1)))
		((= el (car lst)) (cons lst1 (replel (cdr lst) el lst1)))
		(t (cons (car lst) (replel (cdr lst) el lst1)))
	)
)