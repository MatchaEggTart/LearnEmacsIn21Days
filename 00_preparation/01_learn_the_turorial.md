# Emacs Tutorial

* 缩写

  C- == Ctrl  
  M- == Meta/Alt

* 操作

  * 指令
    按键|功能
    ---|---
    C-g|退出一个正在运行或者正在输入的命令

  * 屏幕操作
    按键|功能
    ---|---
    C-v| 切换到下一屏
    M-v| 切换到上一屏
    C-l| 光标依次重置到屏幕中央、上端、下端
    M-<| 光标回到文本最开头
    M- | 光标去到文本最末端

  * 光标控制
    按键|功能
    ---|---
    C-p| 上(previous)
    C-n| 下(next)
    C-b| 左(backward)
    C-f| 右(forward)
    M-b| 往左跳一个词
    M-f| 往右跳一个词
    C-a| 光标回到行首
    C-e| 光标回到行末
    M-a| 光标回到句首
    M-e| 光标回到句末

  * 组合键
    按键|功能
    ---|---
    C-u 前缀参数|这个指令跟上数字后等于重复了多少次，再输入指令或输入，就是重复多少次指令或输入

    例子 C-u 8 C-f 或者 C-u 10 *

  * 被禁用的命令
    如果输入了被禁用的指令，有提示可以查看指令信息

  * 窗格

    按键  |功能
    ---  |---
    C-x 1|  只保留当前窗口
    C-x 2|  当前窗口下方添加窗格
    C-x 3|  当前窗口右方添加窗格

  * 删除

    按键          |功能
    ---          |---
    C-d          | 删除光标后的一个字符
    M-d          | 删除光标后的一个词
    &lt;DEL&gt;  | 删除光标前的一个词
    M-&lt;DEL&gt;| 删除光标后的一个词
    C-k          | 删除从光标到行尾的字符
    M-k          | 删除从光标到句尾的字符

  * 选择

    按键             |功能
    ---             |---
    C-&lt;SPACE&gt; | 选择
    C-@             | 选择

  * 剪切和复制

    按键|功能
    ---|---
    C-w|剪切
    M-w|复制

  * 粘贴/召回(yank)

    按键|功能
    ---|---
    C-y|粘贴(如果遇上 C-u 30 C-k，C-y 也能把30行一次召回，因为同一指令下，都是可以召回)
    M-y|召回 kill 缓冲区的内容(必须先使用 C-y，才能使用 M-y)

  * 撤销

    按键  |功能
    ---  |---
    C-/  | 撤销
    C-_  | 撤销
    C-x u| 撤销

  * 文件操作

    按键|功能
    ---|---
    C-x C-f|打开文件
    C-x C-s|保存文件
  
  * 关闭文件自动备份

      ```lisp {.line-numbers}
      M-x customize-variable <Return> make-backup-files <Return>
      ```

  * 缓冲区(BUFFER)

    按键    |功能
    ---    |---
    C-x C-b| 列出缓冲区
    C-x b  | 输入缓冲文件迅速切换到指定文件
    C-x s  | 保存所有缓冲区

  * 命令集扩展(EXTENDING THE COMMAND SET)

    按键|功能
    ---|---
    C-x| 字符扩展
    M-x| 命令名扩展
    C-z| 最小化

  * 命令名扩展(M-x)

    命令          |功能
    ---           |---
    replace-string| 字符串替换

  * 自动保存(AUTO SAVE)

    命令|功能
    ---|---
    recover file| 恢复你的自动保存文件

    恢复 #*# 文件，如何 "#hello.c#"文件

  * 扩展风格

    扩展风格|解析
    ---    |---
    C-x    | 属于字符扩展(C-x 之后输入的是字符或组合键)
    M-x    | 属于命令名扩展(M-x 之后输入的是命令名)

  * 状态栏(MODE LINE)

    状态名字          |功能
    ---             |---
    fundamental-mode| 切换到 Fundamental 模式
    c-mode          | 切换到 C 模式
    lisp-mode       | 切换到 Lisp 模式
    text-mode       | 切换到 Text 模式(编辑自然语言文本)

    主要针对不同语言使用不同语法规则来添加注释

  * 查看当前主模式下的 插件 与 模式情况

    按键  |功能
    ---  |---
    C-h m|可以查看当前模式的文档

  * 主模式/辅模式

    * 主模式(major)/辅模式(minor)
    * 主模式与辅模式同时存在，但是辅助模式只能提供一些辅助的功能
    * 每个辅模式都可以独立地开启和关闭，跟其他辅模式无关，跟主模式无关
    * 只能使用一个主模式，但可以使用多个辅模式

  * 自动折行(Auto Fill)

    命令           |功能
    ---           |---
    auto-fill-mode| 开启/关闭折行模式

  * 开关模式
    toggle模式 开启后就关闭，关闭后就开启

  * 设置行边界(多少个字符开始换行)

    按键         |功能
    ---         |---
    C-x f [数字]| 设置行边界

    Emacs默认70个字符为行边界

  * 手动折行

    按键|功能
    ---|---
    M-q| 手动折行

    其实就是把下一行并到当前行

  * 搜索(SEARCHING)

    按键|功能
    ---|---
    C-s| 向前搜索
    C-r| 向后搜索
    C-g| 终止搜索命令

  * 多窗格(MULTIPLE WINDOWS)

    按键             |功能
    ---              |---
    C-x 2            | 当前窗口下方添加窗格
    C-x 3            | 当前窗口右方添加窗格
    C-M-v            | 滚动另一个窗口的窗格(自己窗格不动，动隔壁)
    C-x o            | 跳向隔壁窗格
    C-x 1            | 关闭隔壁窗格
    M-x delete-window| 关闭当前窗格

  * 多窗口(MULTIPLE FRAMES)

    按键             |功能
    ---              |---
    M-x make-frame  |  打开新的窗口
    M-x delete-frame|  关闭当前窗口

  * 递归编辑(RECURSIVE EDITING LEVELS)

    按键|功能
    ---|---
    M-%| 递归编辑

    M-% 加上 C-s和C-r然后递归询问是否要切换这个字符串，切换后再按 C-s或C-r会提示是否要继续切换

  * 获得更多帮助(GETTING MORE HELP)

    按键        |功能
    ---         |---
    C-h         |h:help，用来查看Emacs的命令文档
    C-h ?       |查看 Emacs 提供了哪些帮助
    C-h c 指令  | 查看当前指令的简单介绍
    C-h k 指令  | 查看当前指令的详细介绍
    C-h f 函数  | 解释一个函数，需要输入函数名
    C-h v 变量  | 用来显示 Emacs 变量的文档
    C-h a       |相关命令搜索(Command Apropos) 输入一个关键词后 Emacs 会列出所有命令名中包含此关键词的命令。这些命令全都可以用 M-x 来启动
    C-h i       |阅读手册

  * 主要术语的译词对照，并给出注释说明：

    术语              |翻译
    ---               |---
    command           | 命令
    cursor            | 光标
    scrolling         | 滚动
    numeric argument  | 数字参数
    window            | 窗格
    insert            | 插入
    delete            | 删除
    kill              | 移除
    yank              | 召回
    undo              | 撤销
    file              | 文件
    buffer            | 缓冲区
    minibuffer        | 小缓冲
    echo area         | 回显区
    mode line         | 状态栏
    search            | 搜索
    incremental search| 渐进式搜索
