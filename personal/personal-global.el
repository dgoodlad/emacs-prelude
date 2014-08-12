(scroll-bar-mode 0)

;; read in PATH from .zshrc
(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))

;; ensure that ansi-term can render utf-8
(defadvice ansi-term (after advise-ansi-term-coding-system)
    (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(ad-activate 'ansi-term)

;; paste in ansi-term
(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(global-set-key (kbd "C-x o") 'switch-window)

(provide 'personal-global)
