;;;; 
;;;; Emacs Init File
;;;;

(autoload 'adoc-mode "adoc-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.adoc$" . adoc-mode))

;; Local Variables:
;; mode: emacs-lisp
;; coding: utf-8-unix
;; End:
