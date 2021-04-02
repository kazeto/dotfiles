;;; -------- Org Mode --------

(require 'org-install)

(setq org-todo-keywords
      '((sequence "SOMEDAY(s)" "WAIT(w)" "TODO(t)" "|" "DONE(d)")))
(setq org-log-done 'time)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))


;;; -------- C mode --------

(defun my-c-setting ()
  "Setting of c-mode, c++-mode, objc-mode"
  (interactive)
  (c-set-style "stroustrup")
  (local-set-key "\C-h" 'c-electric-backspace)
  (local-set-key "\C-c\C-d"
				 '(lambda ()
					(interactive)
					(compile "${DOTFILES_HOME}/atcoder/run.sh")))
  (setq indent-tabs-mode nil)
  (setq c-tab-always-indent nil)
  (setq c-auto-newline nil))

(add-hook 'c-mode-hook 'my-c-setting)
(add-hook 'objc-mode-hook 'my-c-setting)
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (my-c-setting)
		 (yas-minor-mode)
	     (c-set-offset 'innamespace 0)))

(add-to-list 'auto-mode-alist '("\\.cc$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))


;;; -------- Python Mode --------

(defun my-py-setting ()
  "Setting of python-mode"
  (interactive)
  (local-set-key "\C-m" 'py-newline-and-indent)
  (local-set-key "\C-h" 'py-electric-backspace))

(add-hook 'python-mode-hook 'my-py-setting)
