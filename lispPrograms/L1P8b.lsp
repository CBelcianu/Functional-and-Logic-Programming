;REVERSE A LIST WITH ALL ITS SUBLISTS ON ALL ITS LEVELS

;list-revv(l1..ln)= [], L=[]
;					list-revv(l2..ln) U list-revv(l1), l1-list
;					list-revv(l2..ln) U l1, otherwise

(defun list-revv (lst)
  (cond
   ((null lst) nil)
   ((listp (car lst)) (append (list-revv (cdr lst)) (list (list-revv (car lst)))))
   (T (append (list-revv (cdr lst)) (list (car lst))))
  )
)