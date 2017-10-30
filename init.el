;;; -*- lexical-binding: t -*-


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;; Allow the user to modify the settings of tdemacs.
(require 'tdemacs-user-init nil t)

;;; Load tdemacs in sequence.
(require 'tdemacs-elpa)
(require 'tdemacs-better-defaults)
(require 'tdemacs-mode-line)
(require 'tdemacs-ivy)
(require 'tdemacs-key-hint)
(require 'tdemacs-hydra)

(when (file-exists-p custom-file)
  (load custom-file))

;;; Allow the user to modify the settings after tdemacs is loaded.
(require 'tdemacs-user-config nil t)

(provide 'init)
