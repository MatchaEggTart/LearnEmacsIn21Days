(when *is-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

;; y 和 n 取代 yes 和 no
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-keybindings)
