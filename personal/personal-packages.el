(require 'prelude-packages)

(defvar personal-packages
  '(evil switch-window))

(defun personal-install-packages ()
  (dolist (p personal-packages)
    (unless (package-installed-p p)
      (package-install p))))

(personal-install-packages)

(require 'evil)
(require 'switch-window)

(provide 'personal-packages)
