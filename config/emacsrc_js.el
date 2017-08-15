;; 共通設定ファイル読み込み
(add-to-list 'load-path "~/my/config")
(load "emacsrc_common.el")

;; js2-modeはemacs24必須。
;; https://sites.google.com/site/shidoinfo/Home/programing-lang/関数型プログラミング言語/ecmascript/javascript-kai-fa-huan-jing/emacs-javascript/js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Short-cut
(define-key mode-specific-map "c" 'compile)
