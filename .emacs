(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(font-lock-global-modes '(not speedbar-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;;(delete-other-windows)
(setq inhibit-startup-message  t)
;;(add-hook 'org-mode-hook 'display-line-numbers-mode)
(set-face-attribute 'default nil :height 165)
;;(add-hook 'after-init-file (delete-other-windows)
(global-set-key (kbd "C-x g")  ( lambda() (interactive) (call-process-shell-command  "~/Desktop/notes/upload.sh" nil (messages-buffer) t ) ) )
(tool-bar-mode -1)
(global-set-key (kbd "M-]") 'shrink-window-horizontally)
(global-set-key (kbd "M-[") 'enlarge-window-horizontally)
(global-set-key (kbd "s-r") 'eval-buffer)
;;(add-hook 'after-init-file (find-file "~/Desktop/notes/index.org" nil))
;;(add-hook 'after-find-file (split-window-right 22))
;;(add-hook 'after-init-file (find-file-other-window "~/Desktop/notes/data.org" nil))


(defun my-init-config()
  (interactive)
  (global-display-line-numbers-mode)
  (delete-other-windows)
  (find-file "~/Desktop/notes/index.org" nil)
  (split-window-right 22)
  (find-file-other-window "~/Desktop/notes/data.org" nil))

(add-hook 'after-init-file  (my-init-config))


