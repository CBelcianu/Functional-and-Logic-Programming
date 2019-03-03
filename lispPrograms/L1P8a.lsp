;COMPUTE THE DIFFERENCE OF TWO SETS

;set-diff(l1..ln,l1..lm)= [], L1=[]
;						  l1 U set-diff(l2..ln,L2), (memeber l1 L2)=[]
;						  set-dif(l2..ln,L2), otherwise			  

(defun set-diff (L1 L2)
  (cond
    ((null L1) nil)
    ((null (member (CAR L1) L2)) 
    	(cons (CAR L1) (set-diff (CDR L1) L2)))
    (t (set-diff (CDR L1) L2))
  )
)