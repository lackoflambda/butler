;;;; 
;;;; Emacs Init File
;;;;

;; 基本設定
(require 'org)
;; org-default-notes-fileのディレクトリ
(setq org-directory "~/pj/org/")
(setq org-default-notes-file (expand-file-name "memo.org" org-directory))
(setq org-startup-truncated nil)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; org-modeでの強調表示を可能にする
(add-hook 'org-mode-hook 'turn-on-font-lock)

;; キーバインドの設定
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
(define-key global-map "\C-cc" 'org-capture)

;; org-agenda
;; アジェンダ表示の対象ファイル
;(setq org-agenda-files nil)
(setq org-agenda-files 
      (list 
	    (expand-file-name "~/pj/tasks/tasks.org")
	    (expand-file-name "~/pj/journals/journal.org")
	    (expand-file-name "~/pj/journals/install_log.org")
	    ))

;; アジェンダ表示で下線を用いる
(add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
(setq hl-line-face 'underline)
;; 標準の祝日を利用しない
(setq calendar-holidays nil)

;; org-remember
;(org-remember-insinuate)
;(setq org-remember-templates
;      '(("Todo" ?t "** TODO %?\n   %i\n   \n   %t" nil "Inbox")
;        ("Bug" ?b "** TODO %?   :bug:\n   %i\n   \n   %t" nil "Inbox")
;        ("Idea" ?i "** %?\n   %i\n   \n   %t" nil "New Ideas")
;        ))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/pj/tasks/tasks.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/pj/journals/journal.org")
	 "* LOG %?\n  SCHEDULED: %t\n  CLOSED: %T\n  Entered on %U\n  %i\n")
        ("i" "Install Log" entry (file+datetree "~/pj/journals/install_log.org")
	 "* LOG %?%^g \n  SCHEDULED: %t \n  Entered on %U\n  %i\n")
        ("m" "Memo" entry (file+datetree "~/pj/journals/memo.org")
	 "* %?\n  Entered on %U\n  %i\n  %a")
	))

;; タスク管理
;; TODO状態
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "NOTE(n)"  "|" "DONE(d)" "SOMEDAY(s)" "CANCEL(c)" "LOG(l)")))
;; DONEの時刻を記録
(setq org-log-done 'time)

;; auto-fill-mode
(add-hook 'org-mode-hook
	  '(lambda ()
	     (turn-off-auto-fill)))

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
