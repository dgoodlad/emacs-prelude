(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(add-hook 'nrepl-mode-hook
          'enable-paredit-mode)

(add-hook 'nrepl-interaction-mode-hook
          'nrepl-turn-on-eldoc-mode)

(add-to-list 'same-window-buffer-names "*nrepl*")
