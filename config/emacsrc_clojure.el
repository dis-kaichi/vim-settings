;; 共通設定ファイル読み込み
(add-to-list 'load-path "~/my/config")
;(add-to-list 'load-path "~/my/cask")
(require 'cask "~/.cask/cask.el")
(cask-initialize "~/workspace/clojure/cask")
(load "emacsrc_common.el")

;; ----------------------------------------
;; cider
;; ----------------------------------------
(add-hook 'clojure-mode-hook 'cider-mode)
;; mini bufferに関数の引数を表示させる
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
;; 'C-x b'時に*nrepl-connection*と*nrepl-server*のbufferを一覧に表示しない
(setq nrepl-hide-special-buffers t)
;; REPLのbuffer名を'project名:nREPLのport番号'と表示する
(setq nrepl-buffer-name-show-port t)
;; ----------------------------------------
;; ac-nrepl
;; ----------------------------------------
(autoload 'ac-nrepl "ac-nrepl" nil t)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
                 '(add-to-list 'ac-modes 'cider-repl-mode))
;; ----------------------------------------
;; clojure-cheatsheet
;; ----------------------------------------
;; 特に無し

;; ----------------------------------------
;; clojure-test-mode
;; ----------------------------------------
;; 特に無し

;; ----------------------------------------
;; slamhound
;; ----------------------------------------
;; DONE

;; ----------------------------------------
;; kibit
;; ----------------------------------------
(autoload 'compile "compile" nil t)
(add-to-list 'compilation-error-regexp-alist-alist
             '(kibit "At \\([^:]+\\):\\([[:digit:]]+\\):" 1 2 nil 0))
(add-to-list 'compilation-error-regexp-alist 'kibit)
(defun kibit()
  "Run kibit on the current project.
  Display the results in a hyperlinked *compilation* buffer."
  (interactive)
  (compile "lein kibit"))
(defun kibit-current-file ()
  "Run kibit on the current file.
  Display the results in a hyperlinked *compilation* buffer."
  (interactive)
  (compile (concat "lein kibit " buffer-file-name)))
;; 未完 (2014/02/23)
;; http://d.hatena.ne.jp/oknknic/20130531/1369997249
