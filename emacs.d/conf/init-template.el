;;; -------- template file --------

(require 'autoinsert)
(setq auto-insert-directory "~/.emacs.d/templates/")

(setq auto-insert-alist
      (nconc '(("\\.py$" . "template.py"))
	     auto-insert-alist ))
(add-hook 'find-file-not-found-hooks 'auto-insert)
