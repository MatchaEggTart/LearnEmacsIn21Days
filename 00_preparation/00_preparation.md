# 准备

* 首先如何设置 emacs 编码 为utf-8
    1. 修改 ~/.emacs.d/init.el

        ```shell {.line-numbers}
        emacs ~/.emacs.d/init.el
        ```

        添加一行

        ```lisp {.line-numbers}
        ;; Encore UTF-8
        (set-language-environment "UTF-8")
        (setq default-buffer-file-coding-system 'UTF-8)
        (prefer-coding-system 'utf-8)

        ;; No Backup
        (setq make-backup-files nil)
        (setq auto-save-default nil)

        ;; 显示行号
        (global-linum-mode 1)
        ```

        使用 [Ctrl]+[x] [Ctrl]+[s] 保存\
        使用 [Ctrl]+[x] [Ctrl]+[c] 退出
    2. 重启 emacs，点击 Emacs Tutorial

* 看该目录下，我放置了 Emacs Tutorial 的中文版
