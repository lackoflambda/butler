;;;; 
;;;; Emacs Init File
;;;;

(require 'w3m-load)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8
      w3m-home-page "https://www.google.co.jp/")
(setq w3m-use-cookies t) ;クッキーを使う

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(global-set-key "\C-xm" 'browse-url-at-point)
(setq wl-summary-line-format "%n%T%P%Y-%M-%D(%W) %t%[%17(%c %f%) %] %s")
(setq w3m-default-display-inline-images t)

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:
