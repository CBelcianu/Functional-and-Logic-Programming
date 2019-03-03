(DEFUN onlynumbers(l)
	(COND
		((NULL l) T)
		((NOT( NUMBERP(CAR l))) '())
		(T (onlynumbers (CDR l)))
	)
)

(DEFUN lastop(l pos)
	(COND
		((onlynumbers (CDR l)) pos)
		(T (lastop (CDR l) (+ 1 pos)))
	)
)


(DEFUN res(operator e1 e2)
	(COND
		((EQ operator '+) (+ e1 e2))
		((EQ operator '-) (- e1 e2))
		((EQ operator '*) (* e1 e2))
		((EQ operator '/) (/ e1 e2))
	)
)

(DEFUN solve(l pos)
	(COND
		((NULL l) NIL)
		((EQ pos (lastop  l pos)) (CONS (res (CAR l) (CADR l) (CADDR l))  (CDDDR l)))
		(T (CONS (CAR l) (solve (CDR l) (+ 1 pos))))
	)
)

(DEFUN solveall(l pos)
	(COND
		((EQ (LENGTH l) 1) (CAR l))
		(T (solveall (solve l pos) pos))
	)
)