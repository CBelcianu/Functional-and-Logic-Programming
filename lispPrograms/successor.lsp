(defun suc(lst)
	(cond
		((and (null (cdr lst)) (= (car lst) 9)) 0)
		((and (null (cdr lst)) (/= (car lst) 9)) (+ (car lst) 1))
		((and (zr (cdr lst)) (= (car lst) 9)) (cons 0 (suc (cdr lst))))
		((and (zr (cdr lst)) (/= (car lst) 9)) (cons (+ (car lst) 1) (suc (cdr lst))))
	)
)


(defun zr(lst)
	(cond
		((and (null (cdr lst)) (= (car lst) 0)) t)
		((and (null (cdr lst)) (/= (car lst) 0)) nil)
		((/= (car lst) 0) nil)
		((= (car lst) 0) (zr (cdr lst)))
	)
)