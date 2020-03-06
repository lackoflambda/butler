;;;; 
;;;; Emacs Init File
;;;;

(load (expand-file-name "~/.roswell/helper.el"))
;(setq inferior-lisp-program "/usr/local/bin/ccl") ; your Lisp system
(setq inferior-lisp-program "ros -Q run") ; your Lisp system
;(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/slime-20180601.324"))
(setq slime-net-coding-system 'utf-8-unix)
(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))

;;; Hyperspec
(require 'hyperspec)
(setq common-lisp-hyperspec-root
      (concat "file://" (expand-file-name "~/.emacs.d/doc/HyperSpec/"))
      common-lisp-hyperspec-symbol-table
      (expand-file-name "~/.emacs.d/doc/HyperSpec/Data/Map_Sym.txt"))

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
