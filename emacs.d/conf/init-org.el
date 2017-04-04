(require 'org-install)

(setq org-todo-keywords
      '((sequence "SOMEDAY(s)" "TODO(t)" "|" "DONE(d)")))
(setq org-log-done 'time)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
