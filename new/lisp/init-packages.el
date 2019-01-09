(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("melpa" . "https://melpa.org/packages/")
			   ("melpa-stable" . "https://stable.melpa.org/packages/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar donald/packages '(
			  ;; --- Auto-completion ---
			  use-package
			  ) "Default packages")

(setq package-selected-packages donald/packages)

(defun donald/packages-installed-p ()
  (loop for pkg in donald/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (donald/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg donald/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))



;; theme
(use-package spacemacs-theme
  :ensure t
  :defer t
  :init (load-theme 'spacemacs-dark t)
  )

;; hungry-delete
(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode)
  )

;; popwin
(use-package popwin
  :ensure t
  :config
  (popwin-mode)
  )

;; iedit
(use-package iedit
  :ensure t
  )

;; company
(use-package company
  :ensure t
  :init
  (global-company-mode)
  :config
  (setq-default company-idle-delay 0.1)
  (setq-default company-minimum-prefix-length 2)
  :bind
  (:map company-active-map
	 ("M-n" . nil)
	 ("M-p" . nil)
	 ("C-n" . #'company-select-next)
   	 ("C-p" . #'company-select-previous))
  )

(use-package company-c-headers
  :ensure t
  :after company
  :config
  (add-to-list 'company-backends 'company-c-headers)
  )




(provide 'init-packages)
