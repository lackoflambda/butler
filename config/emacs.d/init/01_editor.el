;;;; 
;;;; Emacs Init File
;;;;

;;; テキストモードでは自動改行無効
(setq text-mode-hook 'turn-off-auto-fill)

;;; バックアップファイルは作成しない
(setq make-backup-files nil)

;;; 終了時にオートセーブファイルを削除
(setq delete-auto-save-files t)

;;; タブはスペースに変換
(setq-default tab-width 4 indent-tabs-mode nil)

;;; 改行コードを表示
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(RC)")
(setq eol-mnemonic-unix "(LF)")

;;; 列数を表示
(column-number-mode t)

;;; 行数を表示
(global-linum-mode nil)

;;; カーソル行をハイライト
(global-hl-line-mode t)

;;; 対応する括弧を強調
(show-paren-mode 1)

;;; スペース・タブを強調
(global-whitespace-mode 1)

;;; スクロール 1行ずつ
(setq scroll-conservatively 1)

;;; メニューバーを非表示
(setq menu-bar-mode 0)

;;; ツールバーを非表示
(setq tool-bar-mode 0)

;;;; Local Variables:
;;;; mode: emacs-lisp
;;;; coding: utf-8-unix
;;;; End:

