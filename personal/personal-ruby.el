(add-hook 'ruby-mode-hook (lambda ()
                            (setq ruby-deep-indent-paren nil)))

(add-hook 'ruby-mode-hook 'whitespace-cleanup-mode)
