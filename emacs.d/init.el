(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el" t)
(load "init-package.el" t)
(load "init-general.el" t)

(load "init-template.el" t)
(load "init-speedbar.el" t)
(load "init-auto-complete.el" t)

(load "init-tuffy.el" t)
(load "init-c.el" t)
(load "init-py.el" t)

