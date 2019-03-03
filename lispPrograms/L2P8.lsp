;RETURN THE LIST OF NODES OF A TREE (of type 2) IN ORDER

;EX: (a (b) (c (d)) <=>  A
;                       / \
;					    B  C
;						  /
;						 D

;inord(l1..ln)= [], L=[]
;				inord(l2) U l1 U inord(l3), otherwise

(defun inord(l)
	(cond
		((null l) nil)
		(t (append (inord (cadr l)) (list (car l)) (inord (caddr l))))
	)
)