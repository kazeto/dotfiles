;;; -------- Tuffy mode --------

(define-derived-mode
  tuffy-mode text-mode
  "Tuffy" "View mode for Tuffy's input file."
  (setq tuffy-font-lock-keywords
	'(("!"      . font-lock-warning-face)
	  ("//.*$"  . font-lock-comment-face)
	  ("\\(\"[^\"]*\"\\)\\s-*," 1 font-lock-string-face)
	  ("\\(\"[^\"]*\"\\)\\s-*)" 1 font-lock-string-face)
	  (" v "    . font-lock-constant-face)
	  (" ^ "    . font-lock-constant-face)
	  (" => "   . font-lock-constant-face)
	  ("\\*"    . font-lock-constant-face)
	  (")\\(\\s-*,\\)" 1 font-lock-constant-face)
	  ("^[0-9.]+\\s-" . font-lock-variable-name-face)
	  ("[.]$"     . font-lock-variable-name-face)))
  (setq font-lock-defaults
	  '(tuffy-font-lock-keywords t t nil nil))
  (add-hook 'tuffy-mode-hook 'turn-on-font-lock))

(add-to-list 'auto-mode-alist '("\\.mln$" . tuffy-mode))
