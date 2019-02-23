
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/home/jiajun/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "/home/jiajun/.emacs.d/init.el"))

(defun open-my-lisp()
  (interactive)
  (dired "/home/jiajun/.emacs.d/lisp/"))

(require 'init-ui)
(require 'init-better-defaults)
(require 'init-packages)
(require 'init-keybindings)
(require 'init-org)
(require 'init-c-c++)

(setq custom-file (expand-file-name "/home/jiajun/.emacs.d/lisp/custom.el" user-emacs-directory))

(load-file custom-file)
