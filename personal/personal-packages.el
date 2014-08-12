(require 'prelude-packages)

(defvar personal-packages
  '(switch-window
    ag))

(defun personal-install-packages ()
  (dolist (p personal-packages)
    (unless (package-installed-p p)
      (package-install p))))

(personal-install-packages)

(require 'switch-window)

(provide 'personal-packages)
