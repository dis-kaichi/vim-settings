;; 共通設定ファイル読み込み
(add-to-list 'load-path "~/my/config")
(load "emacsrc_common.el")

;; はてなダイアリー設定
(load "init-hatena-diary")

;; 改行時の編集を楽にする
(auto-fill-mode 1)
;(setq-default truncate-partial-width-windows t)
;(setq-default truncate-lines t)
