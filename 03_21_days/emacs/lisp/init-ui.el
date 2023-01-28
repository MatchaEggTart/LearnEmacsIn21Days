;;; init-ui.el --- the configurations for ui
;;; Commentary:
;;; Code:

;; -*- lexical-binding: t -*-

(use-package emacs
  :ensure nil
  :config
  (progn
    ;; 关闭启动界面
    (setq inhibit-startup-screen t)
    ;; 自动最大化
    (toggle-frame-maximized)
    ;; 菜单栏关闭
    (menu-bar-mode 0)
    ;; 工具栏关闭
    (tool-bar-mode 0)
    ;; 滚动条关闭
    (scroll-bar-mode 0)
    ;; 显示行号
    (add-hook 'prog-mode-hook #'display-line-numbers-mode t)
    (add-hook 'text-mode-hook #'display-line-numbers-mode t)
    ;; 高亮当前行
    (add-hook 'prog-mode-hook #'hl-line-mode t)
    (add-hook 'text-mode-hook #'hl-line-mode t)
    ;; 光标线状还是块状
    (setq-default cursor-type 'bar)
    )
  )

;; 安装主题
(use-package modus-themes
  :init (load-theme 'modus-operandi-tinted :no-confim))
  ;; :init (load-theme 'modus-vivendi-tinted :no-confim))
  ;; :init (load-theme 'modus-vivendi-deuteranopia :no-confim))

;; mode-line 显示 文件大小
(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))

;; 显示按键指令
;; (use-package keycast
;;  :config
  ;; (add-to-list 'global-mode-string '("" keycast-mode-line))
  ;; (keycast-mode t)
  ;;  (add-to-list 'global-mode-string '("" mode-line-keycast))))
  ;; (add-to-list 'global-mode-string '("" keycast-mode-line-mode))
;;  :init
;;  (keycast-mode-line-mode t)
;;  )

(use-package keycast
  :after doom-modeline
  :commands keycast-mode
  :custom
  ;; (keycast-mode-line-format "%k%c")
  (keycast-mode-line-format "%k")
  :config
  (define-minor-mode keycast-mode
    "Show current command and its key binding in the mode line."
    :global t
    (if keycast-mode
        (progn
          (add-hook 'pre-command-hook 'keycast--update t)
          (add-to-list 'global-mode-string '("" keycast-mode-line " ")))
      (remove-hook 'pre-command-hook 'keycast--update)
      (setq global-mode-string (remove '("" keycast-mode-line " ") global-mode-string))))
  :hook
  (after-init . keycast-mode)
  )

;; M-x all-the-icons-install-fonts
(use-package all-the-icons
  :if
  (display-graphic-p)
  )


;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后
(use-package doom-modeline
  :init
  (doom-modeline-mode t)
  ;; (setq
  ;; doom-modeline-minor-modes t
  ;; doom-modeline-icon nil)"
  ;; fix doom modeline for org
  ;; 设置 mode-line 高度
  ;;   :custom-face
  ;;   (mode-line ((t (:height 0.9))))
  ;;   (mode-line-inactive ((t (:height 0.9))))
  )



;; 记住指令跟文件，下次使用优先，不过 28好像默认开启了
(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

;; 记住 buffer 光标位置
(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))


;; (use-package doom-modeline
;;  :ensure t
;;  :init
;;  (doom-modeline-mode t))

;; 修改 mode-line 模式栏
;; (use-package smart-mode-line
;;   :init
;; 不用每次载入都询问是否使用主题
;;   (setq sml/no-confirm-load-theme t
;; 自动适应主题
;;   	sml/theme 'respectful)
;; 完成加载
;;  (sml/setup))


;; 关闭启动界面
;; (setq inhibit-startup-screen t)

;; 自动最大化
;; (toggle-frame-maximized)
;; (toggle-frame-fullscreen)

;; 菜单栏关闭
;; (menu-bar-mode 0)

;; 工具栏关闭
;; (tool-bar-mode 0)

;; 滚动条关闭
;; (scroll-bar-mode 0)

;; 显示行号
;; (global-display-line-numbers-mode t)

;; 光标线状还是块状
;; (setq-default cursor-type 'bar)
;; (setq-default cursor-type '(bar . 5))
;; (setq cursor-type 'box)
;; (setq cursor-type '(bar . 5))

;; 高亮当前行
;; (global-hl-line-mode 1)
;; (add-hook 'prog-mode-hook #'hl-line-mode t)
;; (add-hook 'text-mode-hook #'hl-line-mode t)

(provide 'init-ui)
;;; init-ui.el ends here
