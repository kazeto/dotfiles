
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el" t)
(load "init-package.el" t)
(load "init-general.el" t)

(load "init-template.el" t)
(load "init-speedbar.el" t)
(load "init-auto-complete.el" t)

(load "init-org.el")
(load "init-c.el" t)
(load "init-py.el" t)
(load "init-tsv.el" t)
(load "init-tuffy.el" t)
(load "init-david.el" t)
(load "init-yatex.el" t)
(load "init-aspell.el" t)
