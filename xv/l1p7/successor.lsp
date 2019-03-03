(defun suc(lst)
	(cond
		((null (cdr lst)) (cons (+ 1 (car lst)) (cdr lst)))
		((zr (cdr lst)) (cons (+ (car lst) 1) (tr (cdr lst))))
		(t (cons (car lst) (suc (cdr lst))))
	)
)

(defun tr(lst)
	(cond
		((null lst) nil)
		(t (cons 0 (tr (cdr lst))))
	)
)


(defun zr(lst)
	(cond
		((and (null (cdr lst)) (= (car lst) 9)) t)
		((and (null (cdr lst)) (/= (car lst) 9)) nil)
		((/= (car lst) 9) nil)
		((= (car lst) 9) (zr (cdr lst)))
	)
)