;; google-c-style  
(use-package google-c-style
  :load-path "/home/jiajun/.emacs.d/styleguide"
  :init
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  :config
  (defun my-c-mode-hook()
    (setq c-basic-offset 4          ;; tab for C  
          default-tab-width 8))     ;; default tab
  (add-hook 'c-mode-hook 'my-c-mode-hook)  
  )


;; (add-to-list 'load-path "/home/jiajun/.emacs.d/google-style")  
;; (require 'google-c-style)  
;; (add-hook 'c-mode-common-hook 'google-set-c-style)  
;; (defun my-c-mode-hook ()  
;;  (setq c-basic-offset 4          ;; tab for C  
;;        default-tab-width 8))     ;; default tab  
;;(add-hook 'c-mode-hook 'my-c-mode-hook)  




(provide 'init-c-c++)
