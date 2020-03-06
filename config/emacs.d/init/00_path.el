;;;; 
;;;; Emacs Init File
;;;;

;; ~/.emacs.d/site-lisp以下を再帰的に読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;; 個別のload-path定義
;(setq load-path (append
;		 '("~/.emacs.d"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/24.3/lisp"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/skk"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/apel"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/emu"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/flim"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/semi"
;		   "/usr/local/Cellar/emacs/24.3/share/emacs/site-lisp/wl"
;		   "/usr/local/share/emacs/site-lisp/howm"
;		   "/usr/local/share/emacs/site-lisp/mew"
;		   "~/.emacs.d/site-lisp/twittering-mode"
;		   "/usr/local/share/emacs/site-lisp/w3m"
;		   "~/.emacs.d/site-lisp/slime"
;		   "~/.emacs.d/site-lisp/org-7.9.4/lisp"
;		   "~/.emacs.d/site-lisp/remember-2.0"
;		   "~/.emacs.d/site-lisp/clmemo"
;		   "~/.emacs.d/site-lisp/wdired"
;		   "~/.emacs.d/site-lisp/auto-install"
;		   "~/.emacs.d/auto-install"
;		   "~/.emacs.d/site-lisp/markdown"
;		   )
;		 load-path))

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
