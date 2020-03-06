;;;; 
;;;; Emacs Init File
;;;;

;;;; http://d.hatena.ne.jp/higepon/20080731/1217491155

(require 'autoinsert)

(setq auto-insert-directory "~/.emacs.d/template")
(setq auto-insert-alist
      (append '(
		("\\.rb$" . ["template.rb" create-template])
		("\\.el$" . ["template.el" create-template])
		("Rakefile$" . ["template.rake" create-template])
	       ) auto-insert-alist))

(defvar template-replacements-alists
  '(("%file%"       . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%license%"    . (lambda () "free"))
    ))

(defun create-template ()
  (time-stamp)
  (mapc #'(lambda (c)
	    (progn
	      (goto-char (point-min))
	      (replace-string (car c) (funcall (cdr c)) nil)))
	template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

(add-hook 'find-file-not-found-hooks 'auto-insert)

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
