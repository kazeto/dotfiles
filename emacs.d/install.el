; -*- coding: utf-8 -*-

;;; Open this file and execute `M-x eval-buffer`.

(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el" t)
(load "init-package.el" t)

(package-refresh-contents)

(defvar my/favorite-packages
  '(
    init-loader ;;; init
    auto-complete fuzzy ;;; auto-complete
    sr-speedbar   ;;; speedbar
    python-mode   ;;; python
    markdown-mode ;;; markdown
    yatex         ;;; yatex-mode
    ))

(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))
