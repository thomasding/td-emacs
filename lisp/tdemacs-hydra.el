(use-package key-chord
  :ensure t
  :config
  (key-chord-mode 1))

(use-package hydra
  :ensure t
  :config
  (global-set-key
   (kbd "C-z")
   (defhydra tdemacs--hydra-move ()
     "move"
     ("n" next-line "next line")
     ("p" previous-line "prev line")
     ("f" forward-char "next char")
     ("b" backward-char "prev char")
     ("F" forward-word "next word")
     ("B" backward-word "word")
     ("a" move-beginning-of-line "begin line")
     ("e" move-end-of-line "end line")
     ("v" scroll-up-command "scroll up")
     ("V" scroll-down-command "scroll down")
     ("l" recenter-top-bottom "recenter")
     ("SPC" set-mark-command "mark")
     ("g" nil "cancel"))))

(provide 'tdemacs-hydra)



