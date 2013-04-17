(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)

(evil-mode 1)
(setq evil-shift-width 2)

(provide 'personal-evil)
