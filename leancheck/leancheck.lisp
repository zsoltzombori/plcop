					; Jan 2020
(defvar *picosat* "picosat-936/picosat")
(defvar *verbose* nil)

(defun allpermsubs (vl sub)
  (if vl
      (let ((rl nil))
	(dolist (u sub rl)
	  (dolist (r (allpermsubs (cdr vl) (remove u sub)))
	    (push (acons (car vl) (cdr u) r) rl))))
    '(nil)))

(defun trm-frees (m)
  (if (consp m)
      (let ((vl nil))
	(dolist (n (cdr m) vl)
	  (setq vl (union (trm-frees n) vl :test #'equal))))
    (list m)))
  
(defun lit-frees (l)
  (if (and (consp l) (eq (car l) 'NOT))
      (trm-frees (cadr l))
    (trm-frees l)))
  
(defun clause-frees (cl)
  (let ((vl nil))
    (dolist (l cl vl)
      (setq vl (union (lit-frees l) vl :test #'equal)))))

(defun trm-subst (m sub)
  (if (consp m)
      (cons (car m) (mapcar #'(lambda (x) (trm-subst x sub)) (cdr m)))
    (let ((n (assoc m sub :test #'equal)))
      (if n
	  (cdr n)
	m))))

(defun lit-subst (l sub)
  (if (and (consp l) (eq (car l) 'NOT))
      (list 'NOT (trm-subst (cadr l) sub)) ; treat atoms like terms
    (trm-subst l sub))) ; treat atoms like terms
      
(defun clause-subst (cl sub)
  (mapcar #'(lambda (x) (lit-subst x sub)) cl))

(defun omit-whitespace (l)
  (catch 'done
    (dotimes (i (length l) "")
      (unless (member (aref l i) '(#\space #\tab #\return #\newline))
	(throw 'done (subseq l i))))))

(defun skip-whitespace (l i)
  (loop while (and (< i (length l)) (member (aref l i) '(#\space #\tab #\newline #\return))) do (incf i))
  i)

(defun name-char-p (c)
  (or (member c '(#\_))
      (let ((cc (char-code c)))
	(or (and (>= cc 48) (< cc 58))
	    (and (>= cc 65) (< cc 91))
	    (and (>= cc 97) (< cc 123))))))

(defun read-name (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (let ((n ""))
    (loop while (name-char-p (aref l i)) do
	  (setq n (format nil "~d~d" n (aref l i)))
	  (incf i))
    (values n i)))

(defun pflinename-char-p (c)
  (or (member c '(#\.))
      (let ((cc (char-code c)))
	(and (>= cc 48) (< cc 58)))))

(defun read-pflinename (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (let ((n ""))
    (loop while (pflinename-char-p (aref l i)) do
	  (setq n (format nil "~d~d" n (aref l i)))
	  (incf i))
    (values n i)))

(defun read-spine (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (multiple-value-bind
      (m1 i)
      (read-trm l i)
    (if (eq (aref l i) #\,)
	(multiple-value-bind
	    (sp i)
	    (read-spine l (skip-whitespace l (1+ i)))
	  (values (cons m1 sp) i))
      (values (list m1) i))))

(defun read-skol-spine (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (if (eq (aref l i) #\])
      (values nil (1+ i))
    (multiple-value-bind
	(m1 i)
	(read-trm l i)
      (if (eq (aref l i) #\,)
	  (multiple-value-bind
	      (sp i)
	      (read-skol-spine l (skip-whitespace l (1+ i)))
	    (values (cons m1 sp) i))
	(if (eq (aref l i) #\])
	    (values (list m1) (1+ i))
	  (throw 'fail nil))))))

(defun read-trm (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (if (eq (aref l i) #\()
      (multiple-value-bind
	  (m1 i)
	  (read-trm l (1+ i))
	(unless (eq (aref l i) #\)) (throw 'fail nil))
	(values m1 (1+ i)))
    (multiple-value-bind
	(n i)
	(read-name l i)
      (if (and (> (length n) 0) (eq (aref n 0) #\_)) ; variable
	  (values n i)
	(if (eq (aref l i) #\^) ; skolem name with possible deps
	    (if (eq (aref l (1+ i)) #\[)
		(multiple-value-bind
		    (sp i)
		    (read-skol-spine l (+ i 2))
		  (values (cons n sp) i))
	      (throw 'fail nil))
	  (if (eq (aref l i) #\()
	      (multiple-value-bind
		  (sp i)
		  (read-spine l (1+ i))
		(unless (eq (aref l i) #\)) (throw 'fail nil))
		(values (cons n sp) (1+ i)))
	    (values (list n) i)))))))

(defun read-atm (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (if (eq (aref l i) #\()
      (multiple-value-bind
	  (m1 i)
	  (read-atm l (1+ i))
	(unless (eq (aref l i) #\)) (throw 'fail nil))
	(values m1 (1+ i)))
    (let (m1 m2)
      (multiple-value-setq (m1 i) (read-trm l i)) ; might just be the atom, but pretend it's a term here for parsing
      (if (eq (aref l i) #\=)
	  (progn
	    (multiple-value-setq (m2 i) (read-trm l (1+ i)))
	    (values (list '= m1 m2) i))
	(values m1 i)))))

(defun read-lit (l i)
  (unless (< i (length l)) (throw 'fail nil))
  (if (eq (aref l i) #\-)
      (progn
	(setq i (skip-whitespace l (1+ i)))
	(multiple-value-bind
	    (m i)
	    (read-atm l i)
	  (values (list 'NOT m) i)))
    (read-atm l i)))

(defun read-clause (l i)
  (let ((lit nil)
	(cl nil))
    (loop while (and (< i (length l)) (not (eq (aref l i) #\]))) do
	  (multiple-value-setq (lit i) (read-lit l i))
	  (when lit (push lit cl))
	  (when (eq (aref l i) #\,) (incf i))
	  (setq i (skip-whitespace l i)))
    (values (reverse cl) (1+ i))))

(defun read-input-clause (l)
  (let ((cln 0)
	(cl nil)
	(lit nil)
	(i 1))
    (catch 'fail
      (loop while (and (< i (length l)) (>= (char-code (aref l i)) 48) (<= (char-code (aref l i)) 57)) do
	    (setq cln (+ (* cln 10) (- (char-code (aref l i)) 48)))
	    (incf i))
      (loop while (and (< i (length l)) (not (eq (aref l i) #\[))) do (incf i))
      (incf i)
      (loop while (and (< i (length l)) (not (eq (aref l i) #\]))) do
	    (multiple-value-setq (lit i) (read-lit l i))
	    (when lit (push lit cl))
	    (when (eq (aref l i) #\,) (incf i))
	    (setq i (skip-whitespace l i)))
      (list cln (reverse cl)))))

(defun read-subst (l i)
  (unless (and (eq (aref l i) #\[)
	       (eq (aref l (1+ i)) #\[))
    (throw 'fail nil))
  (multiple-value-bind
      (l1 i)
      (read-skol-spine l (+ i 2)) ; lazy cheat
    (unless (eq (aref l i) #\,) (throw 'fail nil))
    (incf i)
    (setq i (skip-whitespace l i))
    (unless (eq (aref l i) #\[) (throw 'fail nil))
    (multiple-value-bind
	(l2 i)
	(read-skol-spine l (1+ i)) ; lazy cheat
      (incf i)
      (if (= (length l1) (length l2))
	  (values (mapcar #'cons l1 l2) i)
	(throw 'fail nil)))))
	
(defun read-lean-proof (fn incl f)
  (let ((l nil)
	(phase4 t)
	(pfl nil))
    (loop while (and phase4 (setq l (read-line f nil nil))) do
	  (setq l (omit-whitespace l))
	  (when *verbose* (format t "pfline: ~d~%" l))
	  (if (equal l "------------------------------------------------------")
	      (setq phase4 nil)
	    (let ((cl nil)
		  (cln 0))
	      (multiple-value-bind
		  (pflinename i)
		  (read-pflinename l 0)
		(setq i (skip-whitespace l i))
		(unless (eq (aref l i) #\[) (throw 'fail nil))
		(multiple-value-setq (cl i) (read-clause l (1+ i)))
		(setq i (skip-whitespace l i))
		(unless (eq (aref l i) #\() (throw 'fail nil))
		(incf i)
		(loop while (and (< i (length l)) (>= (char-code (aref l i)) 48) (<= (char-code (aref l i)) 57)) do
		      (setq cln (+ (* cln 10) (- (char-code (aref l i)) 48)))
		      (incf i))
		(if (and (> cln 0) (eq (aref l i) #\)))
		    (progn
		      (incf i)
		      (setq i (skip-whitespace l i))
		      (if (>= i (length l))
			  (let ((icl (assoc cln incl :test #'equal)))
			    (unless icl (format t "ERROR:~d: Could not find input clause ~d referenced by:~d~%" fn cln l) (throw 'fail nil))
			    (unless (subsetp (cadr icl) cl :test #'equal) (format t "ERROR: input clause mismatch:~%~d~%~d~%vs~%~d~%" l cl (cadr icl)) (throw 'fail nil)) ; only check that the actual input clause subsumes the proof clause, since that's good enough.
			    (push (list pflinename cl 'INPUT cln nil) pfl))
			(if (eq (aref l i) #\s) ; substitution
			    (progn
			      (loop while (and (< i (length l)) (not (eq (aref l i) #\:))) do (incf i))
			      (incf i)
			      (multiple-value-bind
				  (sub i)
				  (read-subst l i)
				(format nil "ignore i ~d" i) ; forgot how to declare ignore i and too lazy to search
				(let ((icl (assoc cln incl :test #'equal)))
				  (unless icl (format t "ERROR:~d: Could not find input clause ~d referenced by:~d~%" fn cln l) (throw 'fail nil))
				  (let ((vl (clause-frees (cadr icl))))
				    (if (subsetp vl (mapcar #'car sub) :test #'equal) ; the easy case
					(let ((icl2 (clause-subst (cadr icl) sub)))
					  (unless (subsetp icl2 cl :test #'equal) (format t "ERROR:~d: instance of input clause mismatch:~d~%~d~%vs~%~d~%icl:~S~%sub:~S~%" fn l cl icl2 icl sub) (throw 'fail nil)))
					; the hard case
				      (if (> (length vl) 9)
					  (progn
					    (format t "WARNING:~d: Too many vars (~d) in clause with varname sub mismatch~%~S~%~S~%~S~%" fn (length vl) vl icl l)
					    (throw 'fail nil))
					(if (not (= (length vl) (length sub)))
					    (progn
					      (format t "ERROR:~d: Number of vars (~d) does not match number of sub vars in clause with varname sub mismatch~%~S~%~S~%~S~%~S~%" fn (length vl) vl icl sub l)
					      (throw 'fail nil))
					  (let ((subl (allpermsubs vl sub))
						(foundsub nil))
					    (loop while (and (not foundsub) subl) do
						  (setq foundsub (pop subl))
						  (unless (subsetp (clause-subst (cadr icl) foundsub) cl :test #'equal)
						    (setq foundsub nil)))
					    (unless foundsub (format t "ERROR:~d: Tried every sub permutation instance of input clause mismatch but failed:~d~%~d~%vs~%icl:~S~%sub:~S~%" fn l cl icl sub) (throw 'fail nil))))))))
				(push (list pflinename cl 'INPUT cln sub) pfl)))
			  (throw 'fail nil))))
					; something else, probably reduction
		  (push (list pflinename cl 'OTHER (subseq l (- i 1))) pfl))))))
    pfl))

(defvar *atomh* (make-hash-table :test #'equal))
(defvar *atomcount* 0)
(defvar *clausecount* 1)

(defun atm-num (m)
  (or (gethash m *atomh*)
      (setf (gethash m *atomh*) (incf *atomcount*))))

    ; dual since leancop uses opposite polarity
(defun dual-lit-num (l)
  (if (and (consp l) (eq (car l) 'NOT))
      (atm-num (cadr l))
    (- (atm-num l))))

(defun prop-unsat-pf (fn pfl)
;  (setq *pfl* pfl)
  (setq *atomh* (make-hash-table :test #'equal))
  (setq *atomcount* 0)
  (let ((pcll nil))
    (dolist (p pfl)
      (when (eq (caddr p) 'INPUT) ; ignore all other pf steps
	(push (mapcar #'dual-lit-num (cadr p)) pcll)))
    (let ((g (open (format nil "~d.prop" fn) :direction :output :if-exists :supersede :if-does-not-exist :create)))
      (format g "p cnf ~d ~d~%" *atomcount* (length pcll))
      (dolist (pcl pcll) (dolist (p pcl) (format g "~d " p)) (format g "0~%"))
      (close g)
      (let ((pr (sb-ext:run-program *picosat* (list (format nil "~d.prop" fn)) :output :stream)))
	(let ((l (read-line (sb-ext:process-output pr) nil nil)))
	  (close (sb-ext:process-output pr))
	  (equal l "s UNSATISFIABLE"))))))
  
(defun read-lean-out (fn)
  (let ((f (open fn :direction :input))
	(incl nil)
	(l nil)
	(phase1 t)
	(phase2 t)
	(phase3 t))
    (loop while (and phase1 (setq l (read-line f nil nil))) do
	  (setq l (omit-whitespace l))
	  (when (equal l "Proof for the following clauses:")
	    (setq phase1 nil)))
    (loop while (and phase2 (setq l (read-line f nil nil))) do
	  (setq l (omit-whitespace l))
	  (if (and (> (length l) 1) (eq (aref l 0) #\())
	      (let ((cl (read-input-clause l)))
		(if cl
		    (push cl incl)
		  (format t "Skipping line ~d~%since could not extract clause.~%" l)))
	    (setq phase2 nil)))
    (loop while (and phase3 (setq l (read-line f nil nil))) do
	  (setq l (omit-whitespace l))
	  (when (equal l "Connection Proof:")
	    (read-line f nil nil)
	    (setq phase3 nil)))
    (when *verbose* (format t "~d input clauses:~%~S~%" (length incl) incl))
    (catch 'fail
      (let ((pfl (read-lean-proof fn incl f)))
	(when *verbose* (format t "~d pflines:~%~S~%" (length pfl) pfl))
	(close f)
	(when *verbose* (format t "Proof in ~d seems to be OK~%" fn))
	(prop-unsat-pf fn pfl))))) ; now try prop unsat

(defun top ()
  (let ((n (member "-i" sb-ext:*posix-argv* :test #'equal)))
    (if n
	(if (read-lean-out (cadr n))
	    (format t "PROOF FILE OK~%")
	  (format t "PROOF FILE NOT OK~%"))
      (format t "Sorry, got confused. Expected 'leancheck -i filename'~%"))
    (exit)))

(sb-ext:save-lisp-and-die "leancheck" :toplevel #'top :executable t)


