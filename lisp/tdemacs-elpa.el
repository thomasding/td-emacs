(require 'package)

;;; Set the mirrors of packages.
(setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ("org" . "http://elpa.emacs-china.org/gnu/")
			 ("marmalade" . "http://elpa.emacs-china.org/marmalade/")))

(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))

(package-initialize)

;;; Install use-package.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Load use-package.
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(provide 'tdemacs-elpa)
