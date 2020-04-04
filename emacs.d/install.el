; -*- coding: utf-8 -*-

;;; Open this file and execute `M-x eval-buffer`.

(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el" t)


;; ---- Package

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)


(defvar my/favorite-packages
  '(
    auto-complete fuzzy ;;; auto-complete
    sr-speedbar   ;;; speedbar
    python-mode   ;;; python
    markdown-mode ;;; markdown
    yatex         ;;; yatex-mode
	yasnippet
	use-package
    ))

; Install packages
(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))
