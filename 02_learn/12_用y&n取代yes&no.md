# 用y&n取代yes&no

* 用y&n取代yes&no

  * HOW

      ~/.config/emacs/lisp/init-keybindings.el

      ``` lisp
      ;; y 和 n 取代 yes 和 no
      (defalias 'yes-or-no-p 'y-or-n-p)
      ```
