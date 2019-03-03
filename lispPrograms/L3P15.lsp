;Write a function that reverses a list together with all its sublists elements, at any level



(defun reverse-list (list)
    (if (atom list)
        list
      (reverse (mapcar #'reverse-list list))
    )
)