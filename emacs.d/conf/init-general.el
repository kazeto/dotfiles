; -*- coding: utf-8 -*-

;;; -------- Key Rebind --------

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-h" 'delete-backward-char)

; 言語切替時のエラー音を無効化
(global-set-key [M-kanji] 'ignore)
(global-set-key [kanji] 'ignore)


;;; -------- Default Coding Environment  --------

; 行数と列数を表示
(line-number-mode 1)
(column-number-mode 1)

; 現在の行をハイライト表示
(global-hl-line-mode t)

; 括弧をハイライト表示
(show-paren-mode t)
(setq show-paren-style 'mixed)

; 背景色を黒色に
(custom-set-variables)
(custom-set-faces
 '(highlight ((t (:background "black")))))

(setq frame-title-format (format "Emacs - %%f" (system-name)))

; インデント設定
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list
    '(4 8 12 16 20 24 28 32 36 40 44 48 52 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
(setq indent-tabs-mode nil)
(setq truncate-partial-width-windows nil)
(transient-mark-mode 1)

(set-language-environment "Japanese")

; エンコーディングをUTF-8に設定
(set-default 'buffer-file-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

; バックアップファイルを作らない
(setq-default make-backup-files nil)


;;; -------- Templates --------

(require 'autoinsert)
(setq auto-insert-directory "~/.emacs.d/templates/")

(setq auto-insert-alist
      (nconc '(("\\.py$" . "template.py"))
	     auto-insert-alist ))
(add-hook 'find-file-not-found-hooks 'auto-insert)


;;; -------- Auto Complete --------

(require 'auto-complete-config)
(ac-config-default)

; 補間を行うモードの指定
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'c++-mode)

; C-p, C-n で補間候補選択
(setq ac-use-menu-map t)

; 曖昧マッチを使用
(setq ac-use-fuzzy t)


;;; -------- Aspell --------

(setq-default ispell-program-name "aspell")

; 日本語を無視する
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

; Ctrl-Alt-$ で英単語チェックを実行
(global-set-key (kbd "C-M-$") 'ispell-complete-word)

