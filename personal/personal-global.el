(scroll-bar-mode 0)

;; read in PATH from .zshrc
(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))

(provide 'personal-global)
