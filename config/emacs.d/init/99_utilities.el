;;;; 
;;;; Emacs Init File
;;;;

(defun yyyy-mm-dd ()
  (format-time-string "%Y-%m-%d" (current-time)))

(defun yyyymmdd ()
  (format-time-string "%Y%m%d" (current-time)))

(defun hh:mm ()
  (format-time-string "%H:%M" (current-time)))

(defun hh:mm:ss ()
  (format-time-string "%H:%M:%S" (current-time)))

(defun weekday ()
  (format-time-string "%a" (current-time)))

;; Local Variables:
;; mode: emacs-lisp
;; coding: utf-8-unix
;; End:
