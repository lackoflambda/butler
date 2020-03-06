;;;; 
;;;; Emacs Init File
;;;;

(autoload 'clmemo "clmemo" "ChangeLog MEMO mode." t)
(define-key ctl-x-map "M" 'clmemo)
(setq clmemo-file-name "~/ChangeLog")
(setq add-log-mailing-address "foobar@mail.com")
(setq add-log-full-name "foobar")
(setq clmemo-title-list '("memo" "log"))
(defun clmemo-title-insert-hhmm (title)
  (concat title (format-time-string "[%H:%M:%S]" (current-time))))
(setq clmemo-title-format-function 'clmemo-title-insert-hhmm)

;;;;
;;;; blgrep (clgrep.el)
;;;;
;;(add-hook 'clmemo-mode-hook
;;   '(lambda ()
;;      (define-key clmemo-mode-map "\C-c\C-g" 'clgrep)
;;      (define-key clmemo-mode-map "\C-c," 'quasi-howm)))

(add-hook 'change-log-mode-hook
   '(lambda ()
      (define-key change-log-mode-map "\C-c\C-g" 'blg-changelog)
      (define-key change-log-mode-map "\C-c\C-i"
	'blg-changelog-item-heading)
      (define-key change-log-mode-map "\C-c\C-d"
	'blg-changelog-date)
      (turn-off-auto-fill)))

(add-hook 'outline-mode-hook
   '(lambda ()
      (define-key outline-mode-map "\C-c\C-g" 'blg-outline)
      (define-key outline-mode-map "\C-c1" 'blg-outline-line)))

(add-hook 'outline-minor-mode-hook
   '(lambda ()
      (define-key outline-minor-mode-map "\C-c\C-g" 'blg-outline)
      (define-key outline-minor-mode-map "\C-c1" 'blg-outline-line)))

;; auto-fill-mode
(setq text-mode-hook 'turn-off-auto-fill)
(add-hook 'clmemo-mode-hook
	  '(lambda ()
	     (turn-off-auto-fill)))

;(require 'blg-autoloads)

;;
;; quasi-howm (first edit: [2004-09-28])
;;
;(setq quasi-howm-dir "~/personal/memo/howm/")

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
