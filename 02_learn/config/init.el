;; Encore UTF-8
(set-language-environment "UTF-8")
(setq default-buffer-file-coding-system 'UTF-8)
(prefer-coding-system 'utf-8)

;; No Backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; 先设置加载的目标目录到 load-path 中
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

;; 将 custom 数据放在 custom.el 文件里
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; 如果需要在额外设置的内容(放在mcusto.el里)也需要加载的话，添加下一行
;;(when (file-exists-p custom-file)
;;  (load-file custom-file))

;; 调用配置文件
(require 'init-const)
(require 'init-elpa)
(require 'init-package)
(require 'init-startup)
(require 'init-ui)
(require 'init-keybindings)
;; (require 'init-lsp)
;; (require 'init-eglot)
