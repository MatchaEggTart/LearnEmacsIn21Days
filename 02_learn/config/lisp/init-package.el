;;; init-package.el --- settings for packages

;;; Commentary:
;;; Code:

;; 使用指令重启 Emacs，用于安装插件后
(use-package restart-emacs)

;; 启动速度计时器
(use-package benchmark-init
             :init (benchmark-init/activate)
             :hook (after-init . benchmark-init/deactivate))

;; crux
(use-package crux
  :bind(
	;; 回到第一个字符
	("C-a" . crux-move-beginning-of-line)
	;; ("C-^" . crux-top-join-line)
	;; ("C-c I" . crux-find-user-init-file)
	;; 智能删除键
        ("C-k" . crux-smart-kill-line)))

;; 删除自动清除空白位置(旧)
;; (use-package hungry-delete
;;   :bind (("DEL" . hungry-delete-backward)
;;          ("C-d" . hungry-delete-forward)))

;; 删除自动清除空白位置(新)
(use-package hungry-delete
  ;; :init (global-hungry-delete-mode))
  :hook (after-init . global-hungry-delete-mode))

;; 文本编辑之行/区域上下移动(旧)
;; (use-package drag-stuff
;;   :bind (("<M-up>" . drag-stuff-up)
;;          ("<M-down>" . drag-stuff-down)))

;; 文本编辑之行/区域上下移动(新)
(use-package move-dup
  :hook (after-init . global-move-dup-mode))

;; 强化搜索
(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

;; Minibuffer 优化居中
(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
    '((swiper . ivy-posframe-display-at-frame-center)
      (complete-symbol . ivy-posframe-display-at-point)
      (counsel-M-x . ivy-posframe-display-at-frame-center)
      (counsel-find-file . ivy-posframe-display-at-frame-center)
      (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
      (t . ivy-posframe-display-at-frame-center)))
  (ivy-posframe-mode 1))

  
(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
                swiper-include-line-number-in-search t))

;; 自动补全(旧)
;; (use-package company
;;   :config
;;   (setq company-dabbrev-code-everywhere t
;;         company-dabbrev-code-modes t
;;         company-dabbrev-code-other-buffers 'all
;;         company-dabbrev-downcase nil
;;         company-dabbrev-ignore-case t
;;         company-dabbrev-other-buffers 'all
;;         company-require-match nil
;;         company-minimum-prefix-length 2
;;         company-show-numbers t
;;         company-tooltip-limit 20
;;         company-idle-delay 0
;;         company-echo-delay 0
;;         company-tooltip-offset-display 'scrollbar
;;         company-begin-commands '(self-insert-command))
;;   (push '(company-semantic :with company-yasnippet) company-backends)
;;   :hook ((after-init . global-company-mode)))

;; 自动补全(新)
(use-package company
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))

;; 语法检查(旧)
;; 全局启动
;; (use-package flycheck
;;   :hook (after-init . global-flycheck-mode))
;; 编程模式启动
;; (use-package flycheck
;;   :hook (prog-mode . flycheck-mode))

;; 语法检查(新)
;; (use-package flymake
  ;; :hook (after-init . global-flycheck-mode)
  ;; :hook (prog-mode . flymake-mode)
  ;; :config
  ;; (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  ;; (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

;; 组合键提示器
;; (use-package which-key
;;  :defer nil
;;  :config (which-key-mode))

;; 快速切换窗格
(use-package ace-window 
  :bind (("M-o" . 'ace-window)))


;; 将此文件暴露对外调用的接口
(provide 'init-package)

;;; init-package.el ends here
