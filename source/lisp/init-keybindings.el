(global-set-key (kbd "<f5>") 'open-my-init-file)
(global-set-key (kbd "<f6>") 'open-my-lisp)
(global-set-key (kbd "<f7>") 'recentf-open-files)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; company
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; org
(global-set-key (kbd "C-c a") 'org-agenda)

;; indent

;; iedit


(provide 'init-keybindings)
