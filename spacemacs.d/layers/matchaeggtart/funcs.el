;; (defun open-my-init-file()
;;  (interactive)
;;  (find-file "/home/donald/.spacemacs.d/init.el"))

(defun open-my-layers()
  (interactive)
  (dired "/home/donald/.spacemacs.d/layers/"))

(defun matchaeggtart/open-file-with-projectile-or-counsel-git ()
  (interactive)
  (if (zilongshanren/vcs-project-root)
      (counsel-git)
    (if (projectile-project-p)
        (projectile-find-file)
      (ido-find-file))))

(add-to-list 'load-path "/home/donald/.spacemacs.d/google-style")
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(defun my-c-mode-hook ()
  (setq c-basic-offset 4          ;; tab for C
        default-tab-width 8))     ;; default tab
(add-hook 'c-mode-hook 'my-c-mode-hook)
