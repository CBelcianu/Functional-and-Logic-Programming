(defun det(L)
	(Cond
		((= (detL l) 2) (list (car L)))
		((= (cadr l) 0) (list (list (car L)) (det (cddr L))))
		(T (append (list (car l)) (det (cddr l))))         
    )
)

(defun detL(L)
	(Cond
		((null l) 0)
		(T (+ 1 (detL(cdr L))))
		)
	)