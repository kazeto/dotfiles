(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el" t)


; ---- Package ----

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)


; ---- Loading ----

(load "init-general.el" t)
(load "init-modes.el" t)

(load "init-tsv.el" t)
(load "init-tuffy.el" t)
(load "init-david.el" t)
(load "init-yatex.el" t)
(load "init-aspell.el" t)
