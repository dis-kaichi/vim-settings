;; 背景色の変更はターミナル側でやることに...
;(set-face-foreground 'default "black");; 文字色
;(set-face-background 'default "snow");; 背景

;;; -nwのときにメニューバーを消す
(if window-system (menu-bar-mode 1)
  (menu-bar-mode -1)
)

;; 読み込むパス追加
(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/lib_com")
(cond
  ((= emacs-major-version 23)
   (progn
     (add-to-list 'load-path "~/.emacs.d/lib")
     ;;; anything-gtags.el用にパス追加
     (add-to-list 'load-path "~/.emacs.d/auto-install")
     ))
  ((= emacs-major-version 24)
   (progn
     (add-to-list 'load-path "~/.emacs.d/lib24")
     (add-to-list 'load-path "~/.emacs.d/auto-install")
     )))
;; 共通キー設定
(load "init-key-settings")

;; Hatena
(load "init-hatena-diary")

;; GTAGS
(load "init-gtags")

;; speedbar
(load "init-speedbar")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; モードラインに時間を表示する
(display-time)
;; Mozc 設定
(setq mozc-candidate-style 'overlay)

;; ORG-MODE
(load "init-org-mode")

;; １行ずつスクロール
(setq scroll-step 1)
