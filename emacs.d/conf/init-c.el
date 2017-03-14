;;; -------- C mode --------

(defun my-c-setting ()
  "Setting of c-mode, c++-mode, objc-mode"
  (interactive)
  (c-set-style "stroustrup")
  (local-set-key "\C-h" 'c-electric-backspace)
  (local-set-key (kbd "C-;") 'next-multiframe-window)
  (setq indent-tabs-mode nil)
  (setq c-tab-always-indent nil)
  (setq c-auto-newline nil))

(add-hook 'c-mode-hook 'my-c-setting)
(add-hook 'objc-mode-hook 'my-c-setting)
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (my-c-setting)
	     (c-set-offset 'innamespace 0)))
