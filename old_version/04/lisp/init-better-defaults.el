;; (setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-items 25)

(electric-pair-mode 1)
(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
(show-paren-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; (abbrev-mode t)
;; (define-abbrev-table 'global-abbrev-table '(
;;					    ("abbreviation""full name")
;;					    ("abbreviation""full name")
;;					    ))

(delete-selection-mode t)	;; mark set

;; Menu Chinese  
(set-language-environment 'Chinese-GB)

;; utf-8
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; indent
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))


;; Dired Mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(require 'dired-x)


(provide 'init-better-defaults)
