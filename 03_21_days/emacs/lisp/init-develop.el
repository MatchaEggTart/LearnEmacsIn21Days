;;; init-develop.el --- the configurations for devloper
;;; Commentary:
;;; Code:

;; -*- lexical-binding: t -*-

;; Settings for exec-path-from-shell
;; fix the PATH environment variable issue
(use-package exec-path-from-shell
  :defer nil
  :when (or (memq window-system '(mac ns x))
            (unless (memq system-type '(windows-nt dos))
              (daemonp)))
  :init (exec-path-from-shell-initialize))

;; (use-package vterm
;; :ensure t
;; :confit (display-line-numbers-mode nil))
;;  )

;; 自动补全(新)
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq
   company-minimum-prefix-length 1
   ;; 补全时间等待
   ;; company-idle-delay 0
   company-show-quick-access t)
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous)))

;; for org-bars
(use-package company-posframe
  :config
  (company-posframe-mode 1)
  ;; (setq company-tooltip-minimum-width 40)
  )
  
;; Web-mode
(use-package web-mode
  ;; :ensure t
  :init
  (progn
    ;; 将文件归类到 Web 这个 major mode
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.s?css\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.info\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.module\\'" . web-mode))
    ;; 缩进
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)))

(provide 'init-develop)

;;; init-develop.el ends here
