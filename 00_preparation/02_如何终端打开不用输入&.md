# 如何终端使用 Emacs

* 终端不占用线程开启
  * HOW
    * 方法1：指令后面添加 &

    * 方法2：在 .bashrc 或者 .zshrc 使用 alias 传参

      ``` sh
      # Emacs
      alias emacs="func() { emacs $1 &;}; func"
      ```

* 使用终端模式
  * HOW
    * 指令

      ``` sh
      emacs filename -nw
      ```
  