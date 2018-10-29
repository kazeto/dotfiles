;;; -------- aspell --------

(setq-default ispell-program-name "aspell")

; Ignore Japanese characters.
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

(global-set-key (kbd "C-M-$") 'ispell-complete-word)
