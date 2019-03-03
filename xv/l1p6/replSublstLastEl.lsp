(defun ceva(lst)
	(cond
		((null lst) nil)
		((atom (car lst)) (cons (car lst) (ceva(cdr lst))))
		((listp (car lst)) (append (ceva(car lst)) (ceva (cdr lst))))
	)
)

(defun getLast(lst)
	(cond
		((null (cdr lst)) (car lst))
		(t (getLast (cdr lst)))
	)
)

(defun main(lst)
	(cond
		((null lst) nil)
		((listp (car lst)) (cons (getLast (ceva (car lst))) (main (cdr lst))))
		(t (cons (car lst) (main (cdr lst))))
	)
)