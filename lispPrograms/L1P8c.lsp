;RETURN THE LIST OF THE FIRST ELEMENTS OF ALL LIST ELEMENTS OF A GIVEN LIST WITH AN ODD NO. ELEMENTS AT A SUPERFICIAL LEVEL

;firstel(L) - returns the first element of a list that has an odd no. elements
;firstel(l1..ln)= l1, if n%2=1
;                 nil, otherwise

(defun firstel (ls)
  (cond
    ((null ls) nil)
    ((= (mod (length ls) 2) 1) (car ls))
    ((= (mod (length ls) 2) 0) nil)
  )
)

;resaux - returns a list that respects the condition for the elements of a list
;resaux(l1..ln)= [], L=[]
;                resaux(l2..ln), l1-number
;                firstel(l1) U resaux(l2..ln), otherwise

(defun resaux (ls)
  (cond
    ((null ls) nil)
    ((numberp (car ls)) (resaux (cdr ls))
    )
    ((listp (car ls)) (cons (firstel (car ls)) (resaux(cdr ls))) 
    )
  )
)

;res - adds the first el of the main list, if it has an odd no. elements
;res(l1..ln)= l1 U resaux(l2..ln), n%2=1
;             resaux(l2..ln), otherwise

(defun res (ls)
  (cond
    ((null ls) nil)
    ((= (mod (length ls) 2) 1) (cons (car ls) (resaux (cdr ls))))
    ((= (mod (length ls) 2) 0) (resaux (cdr ls)))
  )
)