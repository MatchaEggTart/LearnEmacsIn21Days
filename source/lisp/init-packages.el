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
			  company
			  popwin
			  hungry-delete
			  spacemacs-theme
			  solarized-theme
			  ;;smartparens
			  iedit
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



;; (smartparens-global-mode t)

(global-company-mode t)
(setq-default company-idle-delay 0.2)
(setq-default company-minimum-prefix-length 2)

(global-hungry-delete-mode)

(load-theme 'spacemacs-dark t)

(require 'popwin)
(popwin-mode 1)

(require 'iedit)

(provide 'init-packages)
