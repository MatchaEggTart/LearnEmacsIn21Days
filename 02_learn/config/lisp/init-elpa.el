;; 软件源
;; 清华源
;; (setq package-archives
;;      '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;	("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;        ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; emacs-china
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
			 ("org"   . "http://1.15.88.122/org/")
                         ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize) ;; You might already have this line

;; 不检查签名，国内镜像如果正在同步，会导致安装签名失败
(setq package-check-signature nil) 

;; 初始化软件包管理器
(require 'package)
;; unless 除非的意思，如果没初始化，就初始化
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; 刷新软件源索引
;; 如果每刷新，刷新
(unless package-archive-contents
  (package-refresh-contents))


;; 第一个扩展插件：use-package，用来批量统一管理软件包
;; 除非安装了 use-package，否则安装它
(unless (package-installed-p 'use-package)
  ;; 刷新
  (package-refresh-contents)
  ;; 安装 use-package
  (package-install 'use-package))

;; 每个安装包自动确认是否已安装
;; (setq use-package-always-ensure t)
;; 每个安装包自动确认是否延迟加载
;; (setq use-package-always-defer t)
;; 与always-defer绑定，延迟加载，也需要触发加载
;; 不使用 demand 可能永远不会加载
;; (setq use-package-always-demand nil)
;; 报告发生的错误
;; (setq use-package-expand-minimally t)
;; 显示安装过程
;; (setq use-package-verbose t)

;; 另一种语法，与上面一样
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)

;; 使用 use-package
(require 'use-package)

;; 将此文件暴露对外调用的接口
(provide 'init-elpa)
