;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;;; 
;;;; Emacs Init File
;;;;

;; package.el
(defvar my-favorite-package-list
  '(init-loader
    use-package
    clmemo
    markdown-mode)
  "packages to be installed")

(require 'package nil t)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents (package-refresh-contents))
(dolist (pkg my-favorite-package-list)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;;init-loader
(require 'init-loader)
;(setq init-loader-show-log-after-init t)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/init")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet use-package package-utils macrostep init-loader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
