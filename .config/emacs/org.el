;; org directory
(setq org-directory "~/org")

;; agenda files
(setq org-agenda-files (list org-directory))

;; timestamp DONE headers
(setq org-log-done 'time)

;; follow links
(setq org-return-follow-links t)

;; .org files automatically enter org mode
(add-to-list 'auto-mode-alist '("\\.org(_archive)?\\'" . org-mode))

;; indent correctly
(add-hook 'org-mode-hook 'org-indent-mode)

;; org mode binds
(evil-define-key 'normal 'global
  (kbd "<leader>oa") 'org-agenda
  (kbd "<leader>oc") 'org-capture
  (kbd "<leader>or") 'org-refile)
;; no emphasis markers
(setq org-hide-emphasis-markers t)

;; line wrapping in org mode
(add-hook 'org-mode-hook 'visual-line-mode)

;; TODO states
(setq org-todo-keywords
    '((sequence "TODO(t)" "WORKING(w)" "DELEGATED(o@)" "|" "DONE(d)" "CANCELLED(c)")))

;; capture
(setq org-capture-templates
      '(("t" "Tests" entry (file+headline "academy.org" "Tests")
         "* %? %^g\n%^t")
        ("a" "Assignments" entry (file+headline "academy.org" "Written assignments")
         "* %? %^g\nDEADLINE: %^t")
        ("m" "Military" entry (file+headline "academy.org" "Military")
         "* %?")
        ("i" "Catch all" entry (file "inbox.org")
         "* %?")))

;; faces
(setq org-todo-keyword-faces
      '(
        ("TODO" . (:foreground "#fb4934" :weight bold))
        ("WORKING" . (:foreground "#8ec07c" :weight bold))
        ("DONE" . (:foreground "#b8bb26" :weight bold))
        ("ORDER" . (:foreground "#928374" :weight bold))
        ("CANCELLED" . (:foreground "#7c6f64" :weight bold))
        ))

;; where to refile to
(setq org-refile-use-outline-path 'file)
(setq org-refile-targets
        '((nil :maxlevel . 3)
        (org-agenda-files :maxlevel . 3)))

;; command used to archive
(setq org-archive-default-command 'org-archive-subtree)

;; where to archive stuff
(setq org-archive-location "%s_archive::")

