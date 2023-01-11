;; 编码问题(旧)
;; (prefer-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (setq default-buffer-file-coding-system 'utf-8)

;; 编码问题(新)
(prefer-coding-system 'utf-8)
(unless *is-windows*
    (set-selection-coding-system 'utf-8))

;; 设置垃圾回收阈值，加速启动速度
(setq gc-cons-threshold most-positive-fixnum)


;; 关闭启动界面
(setq inhibit-startup-screen t)

;; 将此文件暴露对外调用的接口
(provide 'init-startup)
