(defun ceva(lst)
	(cond
		((null lst) nil)
		((atom (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun nrnrats(lst)
	(cond
		((null lst) 0)
		((numberp (car lst)) (+ 1 (nrnrats(cdr lst))))
		(t (nrnrats(cdr lst)))
	)
)

(defun main(lst)
	(nrnrats (ceva lst))
)