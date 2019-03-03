(defun f (L)
    (cond
        ; empty list
        ((null (car L)) nil)

        ; list with just one element
        ((null (cdr L)) (car L))

        ; 2 or more elements
        (T (let ((head (car L))
                 (tailMin (f (cdr L))))
                (if (< head tailMin) head tailMin)
            )
        )
    )
)