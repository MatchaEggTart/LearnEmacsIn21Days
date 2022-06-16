(global-auto-revert-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(delete-selection-mode t)

;; Menu Chinese
(set-language-environment 'Chinese-GB)

;; utf-8
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
