# use-package

* use-package
  * WHAT
    * 一个安装宏
    * 能统一地管理插件

  * HOW
    * 安装 use-package

      ``` lisp
      ;; 第一个扩展插件：use-package，用来批量统一管理软件包
      ;; 除非安装了 use-package，否则安装它
      (unless (package-installed-p 'use-package)
      ;; 刷新
      (package-refresh-contents)
      ;; 安装 use-package
      (package-install 'use-package))
      ```

    * 简洁模式

      ``` lisp
      (use-package 插件)
      ```

    * 常用的格式

      ``` lisp
      (use-package SOME-PACKAGE-NAME
                  :ensure t        ; 确保已安装
                  :defer t         ; 是否要延迟加载，很多时候可以加速Emacs的启动速度
                  :init (setq ...) ; 初始化配置
                  :config (...)    ; 初始化后的基本配置参数
                  :bind (...)      ; 快捷按键绑定
                  :hook (...)      ; hook 设置触发开关
                  )
      ```

    * 建议添加的配置

      新版

      ``` lisp
      ;; `use-package-always-ensure' 避免每个软件包都需要加 ":ensure t" 
      ;; `use-package-always-defer' 避免每个软件包都需要加 ":defer t" 
      (setq use-package-always-ensure t
            use-package-always-defer t
            use-package-enable-imenu-support t
            use-package-expand-minimally t)
      ```

      旧版

      ``` lisp
      ;; 每个安装包自动确认是否已安装
      (setq use-package-always-ensure t)
      ;; 每个安装包自动确认是否延迟加载
      (setq use-package-always-defer t)
      ;; 与always-defer绑定，延迟加载，也需要触发加载
      ;; 不使用 demand 可能永远不会加载
      (setq use-package-always-demand nil)
      ;; 报告发生的错误
      (setq use-package-expand-minimally t)
      ;; 显示安装过程
      (setq use-package-verbose t)
      ```

      另一种写法

      ``` lisp
      (setq use-package-always-ensure t
            use-package-always-defer t
            use-package-always-demand nil
            use-package-expand-minimally t
            use-package-verbose t)
      ```

    * 使用 use-package

      ``` lisp
      ;; 使用 use-package
      (require 'use-package)
      ```
