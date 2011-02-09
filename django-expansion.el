(provide 'django-tests)

(defun traverse-dirs-for-predicate (pred) 
  (let ((cont t)
	(ret nil)
	(last-dir default-directory))
    (while cont
      (if (funcall pred)
	  (progn
	    (setf ret t)
	    (setf cont nil))
	(progn
	  (cd ..)
	  (when (equal default-directory last-dir)
	    (setf cont nil))
	  (setf last-dir default-directory))))
    ret))

(defvar DJANGO-TEST-BUFFER "*DJANGO-TEST-BUFFER*")
(defvar DJANGO-COMMAND-PREFIX "/home/troels/bin/manage_in_environ.sh")

(defun run-django-test-command (cmd)
  (let ((buf (get-buffer-create DJANGO-TEST-BUFFER)))
    (other-window 1)
    (switch-to-buffer buf)
    (shell-command (concat DJANGO-COMMAND-PREFIX " " cmd " &") buf)
    (other-window -1)))

(defun run-app-tests ()
  (interactive)
  (when (traverse-dirs-for-predicate 
	 (lambda () (file-exists-p "tests.py")))
    (let ((dirs (split-string default-directory "/" t)))
      (when dirs
	(let ((appname (car (last dirs)))) 
	  (run-django-test-command (concat "./manage.py test " appname)))))))

(global-set-key (kbd "C-s-t") 'run-app-tests)