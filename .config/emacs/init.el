;; Emacs configuration

;; config file
(setq cfile "~/.config/emacs/")

;; disable splash-screen
(setq inhibit-startup-message t)

;; disable UI elements
(when (display-graphic-p)
	(menu-bar-mode -1)
	(tool-bar-mode -1)
	(scroll-bar-mode -1)
    (defun display-startup-echo-area-message () (message nil)))

;; font
(set-frame-font "DinaRemaster 12" nil t)

;; do not truncate lines
(setq-default truncate-lines t)

;; line numbers
(global-display-line-numbers-mode 1)

;; scrolling
(setq scroll-margin 6)

;; tabs vs spaces
;;(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 4)
;;(setq indent-line-function 'insert-tab)

;; custom variables
(setq custom-file (concat cfile "custom.el"))

;; import files
(setq files '("packages.el" "custom.el" "binds.el" "org.el"))
(dolist (elt files) (load (concat cfile elt)))

;; do not automatically indent in txt mode
(add-hook 'text-mode-hook (lambda () (setq electric-indent-mode nil)))

;; automatically close brackets
(electric-pair-mode t)

;; backup folder
(setq backup-directory-alist '(("." . "~/.config/emacs/.saves")))
(setq backup-by-copying t)

;; auto major mode
(require 'css-mode)
(add-to-list 'auto-mode-alist '("\\.rasi\\'" . css-mode))
