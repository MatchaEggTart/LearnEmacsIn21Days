# MiniBuffer 插件

* ivy-posframe

  * WHAT
    * ivy提示会去到屏幕中间，而不是下边的buffer

  * HOW

      ~/.config/emacs/lisp/init-package.el

      ``` lisp
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
      ```
