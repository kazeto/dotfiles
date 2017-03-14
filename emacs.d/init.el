(setq load-path
      (append '("~/.emacs.d/conf") load-path))

(load "init-proxy.el")
(load "init-package.el")
(load "init-general.el")

(load "init-template.el")
(load "init-speedbar.el")
(load "init-auto-complete.el")

(load "init-tuffy.el")
(load "init-c.el")

