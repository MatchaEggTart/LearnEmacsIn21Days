;; 显示行号
;; (旧)
;; (global-linum-mode 1)
;; (新)
;; (setq display-line-numbers-type 'relative) 
;; (global-display-line-numbers-mode 1)
(unless *is-windows*
  (global-display-line-numbers-mode t))
;; (add-hook 'prog-mode-hook 'display-line-numbers-mode)


;; 菜单栏
(menu-bar-mode -1)
;; 工具栏
(tool-bar-mode -1)
;; 滚动条
(scroll-bar-mode -1)


;; 使用 主题
;; (use-package solarized-theme
;;  :init (load-theme 'solarized-light t))

;; (load-theme 'modus-operandi)            ; Light theme
;; (load-theme 'modus-vivendi)             ; Dark theme
(use-package modus-themes
  :init (load-theme 'modus-operandi-tinted :no-confim))

;; 修改 mode-line 模式栏
(use-package smart-mode-line
  :init
  ;; 不用每次载入都询问是否使用主题
  (setq sml/no-confirm-load-theme t
  	;; 自动适应主题
        sml/theme 'respectful)
  ;; 完成加载
  (sml/setup))

;; Windows 字体配置(旧)
;; (use-package emacs
;;      :if (display-graphic-p)
;;      :config
;;      ;; Font settings
;;      (if *is-windows*
;;	  (progn
;;	    (set-face-attribute 'default nil:font "Microsoft Yahei Mono 9")
;;	    (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;              (set-fontset-font (frame-parameter nil 'font)
;;				charset(font-spec :family "Microsoft Yahei Mono" :size 9))))
;;	(set-face-attribute 'default nil :font "Source Code Pro 11")))

;; Windows 字体配置(新)
(defvar cn-fonts-list '("黑体" "STHeiti" "微软雅黑" "文泉译微米黑")
  "定义使用的中文字体候选列表.")

(defvar en-fonts-list '("Cascadia Code" "Courier New" "Monaco" "Ubuntu Mono")
  "定义使用的英文字体候选列表.")

(defvar emoji-fonts-list '("Apple Color Emoji" "Segoe UI Emoji" "Noto Color Emoji" "Symbola" "Symbol")
  "定义使用Emoji字体候选列表.")

;;;###autoload
(defun tenon--font-setup ()
  "Font setup."

  (interactive)
  (let* ((cf (tenon--available-font cn-fonts-list))
	     (ef (tenon--available-font en-fonts-list))
         (em (tenon--available-font emoji-fonts-list)))
    (when ef
      (dolist (face '(default fixed-pitch fixed-pitch-serif variable-pitch))
	    (set-face-attribute face nil :family ef)))
    (when em
      (dolist (charset `(unicode unicode-bmp ,(if (> emacs-major-version 27) 'emoji 'symbol)))
        (set-fontset-font t charset em nil 'prepend)))
    (when cf
      (dolist (charset '(kana han cjk-misc bopomofo))
	    (set-fontset-font t charset cf))
      (setq face-font-rescale-alist
	        (mapcar (lambda (item) (cons item 1.2)) `(,cf ,em))))))


;; 将此文件暴露对外调用的接口
(provide 'init-ui)
