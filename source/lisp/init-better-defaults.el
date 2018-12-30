;; (setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-items 25)

(electric-pair-mode 1)
(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
(show-paren-mode t)

;; paren
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
        (t (save-excursion
             (ignore-errors (backward-up-list))
             (funcall fn)))))

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

;; Dired Mode
(require 'dired-x)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))



(provide 'init-better-defaults)
