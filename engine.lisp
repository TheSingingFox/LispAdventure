;;; a function for viewing your inventory

(defun invent () (format t "~A~%" *invent*))

(defvar x 0)

(defvar y 1)

;;; The game begins

(defun start ()

(format t "~a~%~%~%" *intro*)

(ort *stand*)

(setf x (read))

;;; The game enginge

(loop 
  (cond
    ((eq x 'westen)
     (cond 
       ;; checks wether the 'walls' list for the room defines a wall there
       ((member *westen* (cadddr *standlist*))
	;; if there is a wall, it just prints that there is one
	  (format t "Da ist eine Wand.~%"))
       ;; if there is none, it proceeds with changing your position to the new room
       (t (setf *stand* (+ *stand* 133))
       (ort *stand*))))
    ((eq x 'w)
     (cond ((member *westen* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (+ *stand* 133))
       (ort *stand*))))
    ((eq x 'osten)
     (cond ((member *osten* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (- *stand* 133))
       (ort *stand*))))
    ((eq x 'o)
     (cond ((member *osten* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (- *stand* 133))
       (ort *stand*))))
    ((eq x 'norden)
     (cond ((member *norden* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (+ *stand* 1001))
       (ort *stand*))))
    ((eq x 'n)
     (cond ((member *norden* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (+ *stand* 1001))
       (ort *stand*))))
    ((eq x 'sueden)
     (cond ((member *sueden* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (- *stand* 1001))
       (ort *stand*))))
    ((eq x 's)
     (cond ((member *sueden* (cadddr *standlist*))
	  (format t "Da ist eine Wand.~%"))
       (t (setf *stand* (- *stand* 1001))
       (ort *stand*))))
    ((eq x 'hoch)
     (cond ((member *hoch* (cadddr *standlist*))
	  (format t "Da ist die Decke.~%"))
       (t (setf *stand* (+ *stand* 2))
       (ort *stand*))))
    ((eq x 'h)
     (cond ((member *hoch* (cadddr *standlist*))
	  (format t "Da ist die Decke.~%"))
       (t (setf *stand* (+ *stand* 2))
       (ort *stand*))))
    ((eq x 'runter)
     (cond ((member *runter* (cadddr *standlist*))
	  (format t "Dafür ist der Boden zu stabil.~%"))
       (t (setf *stand* (- *stand* 2))
       (ort *stand*))))
    ((eq x 'r)
     (cond ((member *runter* (cadddr *standlist*))
	  (format t "Dafür ist der Boden zu stabil.~%"))
       (t (setf *stand* (- *stand* 2))
       (ort *stand*))))
    ((eq x 'schau)
     (ort *stand*))
    ((eq x 'i)
     (invent)
     (format t "~%Was willst du tun?~%"))
    ((eq x 'nimm)
     (nimm (read)))
    ((eq x 'iss)
     (iss (read)))
    ((eq x 'schluss)
     (setf y -1))
    ((eq x 'homer)
     (prooemium (read)))
    ((eq x 'hilfe)
     (format t "~%~%~a~%~%~%Was willst du tun?~%" *intro*)))
  (setf x (read))))
