;;;; 
;;;; Emacs Init File
;;;;

;(require 'skk-autoloads)
(setq skk-use-azik t)
(setq skk-azik-keyboard-type 'us101)

(global-set-key "\C-x\C-j" 'skk-mode)
(global-set-key "\C-xj" 'skk-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;(setq skk-jisyo-code 'utf-8-unix)
;(setq skk-large-jisyo (expand-file-name "~/.emacs.d/skk-get-jisyo/SKK-JISYO.L"))

; isearch-modeでskkを使う
; http://www.bookshelf.jp/cgi-bin/goto.cgi?file=skk&node=%A5%A4%A5%F3%A5%AF%A5%EA%A5%E1%A5%F3%A5%C8%B8%A1%BA%F7%A4%CE%C0%DF%C4%EA
(add-hook 'isearch-mode-hook                     
          #'(lambda ()                           
              (when (and (boundp 'skk-mode)      
                         skk-mode                
                         skk-isearch-mode-enable)
                (skk-isearch-mode-setup))))

(add-hook 'isearch-mode-end-hook                 
          #'(lambda ()                           
              (when (and (featurep 'skk-isearch) 
                         skk-isearch-mode-enable)
                (skk-isearch-mode-cleanup))))

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
