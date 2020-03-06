;;;; 
;;;; Emacs Init File
;;;;

;; Markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(setq markdown-command "pandoc")
(setq markdown-command "pandoc -c ~/.pandoc/github-markdown.css")

;; Local Variables:
;; mode: emacs-lisp
;; coding: utf-8-unix
;; End:
