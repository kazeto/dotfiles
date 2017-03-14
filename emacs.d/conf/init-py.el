(defun my-py-setting ()
  "Setting of python-mode"
  (interactive)
  (local-set-key "\C-m" 'py-newline-and-indent)
  (local-set-key "\C-h" 'py-electric-backspace))

(add-hook 'python-mode-hook 'my-py-setting)
