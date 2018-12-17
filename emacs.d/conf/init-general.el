;;; -------- Key Rebind --------

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key [M-kanji] 'ignore)
(global-set-key [kanji] 'ignore)


;;; -------- Default Coding Environment  --------
(line-number-mode 1)
(column-number-mode 1)

(global-hl-line-mode t)
(show-paren-mode t)
(setq show-paren-style 'mixed)

(setq custom-file (locate-user-emacs-file "init-general.el"))
(custom-set-faces
 '(highlight ((t (:background "black")))))

(setq frame-title-format (format "Emacs - %%f" (system-name)))

(setq tab-width 4)
(setq tab-stop-list
    '(4 8 12 16 20 24 28 32 36 40 44 48 52 60))
(setq indent-tabs-mode nil)
(setq truncate-partial-width-windows nil)
(transient-mark-mode 1)

(set-language-environment "Japanese")

(set-default 'buffer-file-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)


;;; -------- don't make backup files --------
(setq-default make-backup-files nil)

