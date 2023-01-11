(defconst *is-mac*
  (eq system-type 'darwin) "判断操作系统是Mac")
(defconst *is-linux*
  (eq system-type 'gnu/linux) "判断操作系统是Linux")
(defconst *is-windows*
  (memq system-type '(ms-dos windows-nt cygwin)) "判断操作系统是Windows")

(provide 'init-const)
