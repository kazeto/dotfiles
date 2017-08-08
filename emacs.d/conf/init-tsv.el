;;; -------- TSV mode --------

(defface my-face-tsv '((t (:background "blue" :foreground "black"))) "Face for tab.")
(defvar my-face-tsv 'my-face-tsv)

(define-derived-mode
  tsv-mode text-mode
  "TSV" "View mode for TSV file."
  (setq tsv-font-lock-keywords
	'(("#.*$" . font-lock-comment-face)
	  ("[\t]+" . my-face-tsv)))
  (setq font-lock-defaults
	  '(tsv-font-lock-keywords t t nil nil))
  (add-hook 'tsv-mode-hook 'turn-on-font-lock))

(add-to-list 'auto-mode-alist '("\\.tsv$" . tsv-mode))
