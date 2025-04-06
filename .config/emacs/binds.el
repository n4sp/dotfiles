;; leader key
(evil-set-leader '(normal visual motion) (kbd "<SPC>"))

;; functions
(defun cycle-buffer (action) (interactive)
       (let (current (buffer-name))
         (if action (next-buffer) (previous-buffer))
         (while
             (and
              (string-match-p "^\*" (buffer-name))
              (not (equal current (buffer-name))))
           (if action (next-buffer) (previous-buffer)))))

;; binds
(evil-define-key '(normal motion) 'global
  (kbd "C-r") '(lambda () (interactive) (load (concat cfile "init.el")))
  (kbd "<leader>f") 'treemacs
  (kbd "<leader>n") (lambda () (interactive) (cycle-buffer t))
  (kbd "<leader>p") (lambda () (interactive) (cycle-buffer nil))
  (kbd "<leader>w") 'save-buffer
  (kbd "<leader>c") 'kill-buffer 
  (kbd "<leader>h") 'split-window-below
  (kbd "<leader>v") 'split-window-right
  (kbd "<leader>j") 'other-window
  (kbd "<leader>k") 'delete-window
  (kbd "<leader>1") 'treemacs-root-up
  (kbd "<leader>2") 'treemacs-root-down
  (kbd "<leader>qq") 'save-buffers-kill-emacs)

(evil-define-key 'insert 'global
  (kbd "C-S-v") 'clipboard-yank)

