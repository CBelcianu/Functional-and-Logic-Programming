(defun ceva(lst)
	(cond
		((null lst) nil)
		((numberp (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun cmmdc(a b)
	(cond
		((< a b) (cmmdc a (- b a)))
		((> a b) (cmmdc (- a b) b))
		((= a b) a)
	)
)

(defun clst(lst x)
	(cond
		((null lst) nil)
		((null (cddr lst)) (cmmdc (car lst) (cadr lst)))
		(t (cmmdc (car lst) (clst (cdr lst) (cmmdc (car lst) x))))
	)
)

(defun cmain(lst)
	(clst (ceva lst) 1)
)