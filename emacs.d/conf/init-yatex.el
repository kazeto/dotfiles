(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t) 
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
		("\\.ltx$" . yatex-mode)
		("\\.cls$" . yatex-mode)
		("\\.sty$" . yatex-mode)
		("\\.clo$" . yatex-mode)
		("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-inhibit-prefix-letter nil)
(setq YaTeX-kanji-code 4) ;; UTF-8

(setq tex-command "platex -kanji=utf8")
(setq dvi2-command "cygstart")
(setq bibtex-command "pbibtex")
(setq dviprint-command-format "dvipdfmx")

(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)))
