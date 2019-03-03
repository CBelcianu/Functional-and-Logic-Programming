(defun ceva(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun nocc(lst x)
	(cond
		((null lst) 0)
		((= x (car lst)) (+ 1 (nocc (cdr lst) x)))
		(t (nocc (cdr lst) x))
	)
)

(defun main(lst x)
	(nocc (ceva lst) x)
)