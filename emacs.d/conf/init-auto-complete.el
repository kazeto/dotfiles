;;; -------- Auto Complete Mode --------

(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'python-mode)

(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)

