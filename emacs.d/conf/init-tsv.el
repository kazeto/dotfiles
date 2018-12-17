;;; -------- TSV mode --------

(defface my-face-tsv-tab '((t (:background "black" :foreground "black"))) "Face for tabs in TSV.")
(defvar my-face-tsv-tab 'my-face-tsv-tab)

(defface my-face-tsv-2 '((t (:foreground "blue"))) "Face for 2nd column in TSV.")
(defvar my-face-tsv-2 'my-face-tsv-2)

(defface my-face-tsv-3 '((t (:foreground "yellow"))) "Face for 3rd column in TSV.")
(defvar my-face-tsv-3 'my-face-tsv-3)

(defface my-face-tsv-4 '((t (:foreground "magenta"))) "Face for 4th column in TSV.")
(defvar my-face-tsv-4 'my-face-tsv-4)

(defface my-face-tsv-5 '((t (:foreground "green"))) "Face for 5th column in TSV.")
(defvar my-face-tsv-5 'my-face-tsv-5)

(defface my-face-tsv-6 '((t (:foreground "cyan"))) "Face for 6th column in TSV.")
(defvar my-face-tsv-6 'my-face-tsv-6)

(defface my-face-tsv-7 '((t (:foreground "red"))) "Face for 7th column in TSV.")
(defvar my-face-tsv-7 'my-face-tsv-7)

(define-derived-mode
  tsv-mode text-mode
  "TSV" "View mode for TSV file."
  (setq tsv-font-lock-keywords
	'(("#.*$" . font-lock-comment-face)
	  ("[\t]+" . my-face-tsv-tab)
	  ("^[^\t]*\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2))
	  ("^[^\t]*\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2)
	   (3 my-face-tsv-tab)
	   (4 my-face-tsv-3))
	  ("^[^\t]*\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2)
	   (3 my-face-tsv-tab)
	   (4 my-face-tsv-3)
	   (5 my-face-tsv-tab)
	   (6 my-face-tsv-4))
	  ("^[^\t]*\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2)
	   (3 my-face-tsv-tab)
	   (4 my-face-tsv-3)
	   (5 my-face-tsv-tab)
	   (6 my-face-tsv-4)
	   (7 my-face-tsv-tab)
	   (8 my-face-tsv-5))
	  ("^[^\t]*\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2)
	   (3 my-face-tsv-tab)
	   (4 my-face-tsv-3)
	   (5 my-face-tsv-tab)
	   (6 my-face-tsv-4)
	   (7 my-face-tsv-tab)
	   (8 my-face-tsv-5)
	   (9 my-face-tsv-tab)
	   (10 my-face-tsv-6))
	  ("^[^\t]*\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t]*\\)\\([\t]\\)\\([^\t\n]*\\)$"
	   (1 my-face-tsv-tab)
	   (2 my-face-tsv-2)
	   (3 my-face-tsv-tab)
	   (4 my-face-tsv-3)
	   (5 my-face-tsv-tab)
	   (6 my-face-tsv-4)
	   (7 my-face-tsv-tab)
	   (8 my-face-tsv-5)
	   (9 my-face-tsv-tab)
	   (10 my-face-tsv-6)
	   (11 my-face-tsv-tab)
	   (12 my-face-tsv-7))))
  (setq font-lock-defaults
	  '(tsv-font-lock-keywords t t nil nil))
  (add-hook 'tsv-mode-hook 'turn-on-font-lock))

(add-to-list 'auto-mode-alist '("\\.tsv$" . tsv-mode))
