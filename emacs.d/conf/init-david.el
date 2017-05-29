;;; -------- David mode --------

(define-derived-mode
  david-mode text-mode
  "David" "View mode for David's input file."
  (setq david-font-lock-keywords
	'(("#.*$" . font-lock-comment-face)
	  ("\\(\"[^\"]*\"\\)\\s-*," 1 font-lock-string-face)
	  ("\\(\"[^\"]*\"\\)\\s-*(" 1 font-lock-string-face)
	  ("\\(\"[^\"]*\"\\)\\s-*)" 1 font-lock-string-face)
	  (" \\^ "  . font-lock-constant-face)
	  (" => "   . font-lock-constant-face)
	  ("\\<not\\>"  . font-lock-warning-face)
	  ("!"          . font-lock-warning-face)
	  ("^problem\\( \\|{\\)"  . font-lock-constant-face)
	  ("^rule\\( \\|{\\)"     . font-lock-constant-face)
	  ("^property\\( \\|{\\)" . font-lock-constant-face)
	  ("\\<\\(observe\\)\\s-*:" 1 font-lock-constant-face)
	  ("\\<\\(require\\)\\s-*:" 1 font-lock-constant-face)
	  ("\\<\\(choice\\)\\s-*:"  1 font-lock-constant-face)
	  (":[^ \t\n(){}]+" . font-lock-comment-face)))
  (setq font-lock-defaults
	  '(david-font-lock-keywords t t nil nil))
  (add-hook 'david-mode-hook 'turn-on-font-lock))

(add-to-list 'auto-mode-alist '("\\.dav$" . david-mode))
