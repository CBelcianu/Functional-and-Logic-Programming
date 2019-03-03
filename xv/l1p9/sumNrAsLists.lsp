(defun suml(lst1 lst2 cf)
	(cond
		((and (null (cdr lst1)) (null (cdr lst2)) (> (+ (car lst1) (car lst2)) 9)) (cons (- (+ (car lst1) (car lst2)) 10) nil))
		((and (null (cdr lst1)) (null (cdr lst2)) (< (+ (car lst1) (car lst2)) 9)) (cons (+ (car lst1) (car lst2)) nil))
		((> (+ (car lst1) (car lst2) cf) 9) (cons (- (+ (car lst1) (car lst2) cf) 10) (suml (cdr lst1) (cdr lst2) (+ 1 cf))))
		((< (+ (car lst1) (car lst2) cf) 9) (cons (+ (car lst1) (car lst2) cf) (suml (cdr lst1) (cdr lst2) cf)))
	)
)