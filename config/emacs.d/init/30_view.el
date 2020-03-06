;;;; 
;;;; Emacs Init File
;;;;

;; 時刻の表示( 曜日 月 日 時間:分 )
;; http://d.hatena.ne.jp/khiker/20070607/emacs_time
;; http://www.bookshelf.jp/soft/meadow_16.html#SEC143
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-string-forms
  '(year "/" month "/" day " " dayname " " 24-hours ":" minutes))
(display-time-mode t)

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
