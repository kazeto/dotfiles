(require 'org-install)

(setq org-todo-keywords
      '((sequence "WAIT(w)" "TODO(t)" "|" "DONE(d)")))
(setq org-log-done 'time)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
