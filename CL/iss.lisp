;;; Eat stuff

(defun iss (y)
  (cond ((eq y '1)
	 (setf *invent* (cdr *invent*)))
	((eq y '2)
	 (setf *invent* (remove (cadr *invent*) *invent*)))
	((eq y '3)
	 (setf *invent* (remove (caddr *invent*) *invent*)))
	((eq y '4)
	 (setf *invent* (remove (cadddr *invent*) *invent*))))
  (format t "Das ist nicht essbar. Du stirbst.~%")
  (quit)) 
