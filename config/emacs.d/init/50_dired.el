;;;; 
;;;; Emacs Init File
;;;;

;;; dired の設定
;(defun open-mac (path)
;  (start-process "dired-open-mac" nil "open" path))

; Quicklookで閲覧
;(defun quicklook-file (path)
;  (interactive)
;  (defvar cur nil)
;  (defvar old nil)
;  (setq old cur)
;  (setq cur (start-process "ql-file" nil "qlmanage" "-p" path))
;  (when old (delete-process old)))

; 関連付けでオープンする
;(defun my-dired-open ()
;  (interactive)
;  (let ((exts-ql   '("jpeg" "jpg" "png" "gif"))
;        (exts-open '("avi" "mkv" "mp4" "pdf")))
;     (cond ((file-accessible-directory-p (dired-get-file-for-visit))
;            (call-interactively 'dired-find-alternate-file))
;           ((member (downcase (file-name-extension (dired-get-file-for-visit))) exts-ql)
;            (funcall 'quicklook-file (dired-get-file-for-visit)))
;           ((member (downcase (file-name-extension (dired-get-file-for-visit))) exts-open)
;            (funcall 'open-mac (dired-get-file-for-visit)))
;           (t
;            (call-interactively 'dired-find-file-other-window)))))
; 
;(add-hook 'dired-mode-hook
;          '(lambda ()
;             (define-key dired-mode-map "z"  'my-dired-open)))

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
