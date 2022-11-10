(global-display-line-numbers-mode)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(require 'package)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" "c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" "1711947b59ea934e396f616b81f8be8ab98e7d57ecab649a97632339db3a3d19" default))
 '(font-lock-global-modes '(not speedbar-mode))
 '(package-selected-packages
   '(org-bullets auto-complete spacemacs-theme dracula-theme zenburn-theme afternoon-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "light green"))))
 '(mode-line-emphasis ((t (:foreground "dark cyan" :weight bold))))
 '(underline ((t (:foreground "OrangeRed1")))))
(add-to-list 'custom-theme-load-path "/Users/space-x/.emacs.d/themes")
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(delete-other-windows)

(setq inhibit-startup-message  t)
(setq org-hide-leading-stars t)
(setq org-hide-emphasis-markers t)
(setq org-startup-indented t)

;;(add-hook 'org-mode-hook 'display-line-numbers-mode)
(set-face-attribute 'default nil 
		    :height 165)
;;(add-hook 'after-init-file (delete-other-windows)
(global-set-key (kbd "C-x g") 
		( lambda() 
		  (interactive) 
		  ( if (string-equal system-type "windows-nt" ) 
		      (call-process-shell-command
		       "C:/Users/50766/AppData/Local/Programs/Git/git-bash.exe"
		       "C:/Users/50766/Desktop/notes/upload.sh" (get-buffer-create "Git Output") t ) 
		    (call-process-shell-command  "~/Desktop/notes/upload.sh" nil (get-buffer-create
										  "Git Output") t))))
(tool-bar-mode -1)
(global-set-key (kbd "M-]") 'shrink-window-horizontally)
(global-set-key (kbd "M-[") 'enlarge-window-horizontally)
(global-set-key (kbd "s-r") 'eval-buffer)
(global-set-key (kbd "C-M-x") 'set-mark-command)
;;(add-hook 'after-init-file (find-file "~/Desktop/notes/index.org" nil))
;;(add-hook 'after-find-file (split-window-right 22))
;;(add-hook 'after-init-file (find-file-other-window "~/Desktop/notes/data.org" nil))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () 
			   (org-bullets-mode 1)
			   ))


(defun my-init-config() 
  (interactive) 
  (global-display-line-numbers-mode) 
  (delete-other-windows) 
  (if (string-equal system-type "windows-nt" ) 
      (find-file "C:/Users/50766/Desktop/notes/index.org" nil) 
    (find-file "~/Desktop/notes/index.org" nil)) 
  (split-window-right 22) 
  (if (string-equal system-type "windows-nt" ) 
      (find-file-other-window "C:/Users/50766/Desktop/notes/data.org" nil) 
    (find-file-other-window "~/Desktop/notes/data.org" nil)))

(add-hook 'after-init-file  (my-init-config))

(global-set-key (kbd "C-x w") 
		(lambda() 
		  (interactive) 
		  (delete-other-windows) 
		  (if (string-equal system-type "windows-nt" ) 
		      (find-file "C:/Users/50766/Desktop/notes/index.org" nil) 
		    (find-file "~/Desktop/notes/index.org" nil)) 
		  (split-window-right 22) 
		  (if (string-equal system-type "windows-nt" ) 
		      (find-file-other-window "C:/Users/50766/Desktop/notes/data.org" nil) 
		    (find-file-other-window "~/Desktop/notes/data.org" nil))))


(global-set-key (kbd "C-1") 
		(lambda() 
		  (interactive) 
		  (setq x 
			(buffer-substring 
			 (region-beginning) 
			 (region-end))) 
		  (org-insert-link "link" (concat "file:data.org::" x)  x)))


(global-set-key (kbd "C-x e") 
		(lambda() 
		  (interactive) 
		  (end-of-line) 
		  (next-line) 
		  (beginning-of-line) 
		  (set-mark-command nil) 
		  (org-forward-paragraph) 
		  (indent-rigidly (region-beginning) 
				  (region-end) 4)))


(global-set-key (kbd "C-x i") 
		(lambda() 
		  (interactive) 
		  (indent-rigidly (region-beginning) 
				  (region-end) 4)))




(defun make-bold(start end) 
  (interactive "r" )
  (deactivate-mark)
  (goto-char start) 
 (skip-chars-forward " ") 
  (insert "*") 
  (goto-char (+ end 1)) 
 (skip-chars-backward " ") 
  (insert "*"))


(global-set-key (kbd "C-q")  'make-bold)

(defun convert-to-underline(start end) 
  (interactive "r" )
  (deactivate-mark)
  (goto-char start) 
 (skip-chars-forward " ") 
  (insert "_") 
  (goto-char (+ end 1)) 
 (skip-chars-backward " ") 
  (insert "_")
  )

(global-set-key (kbd "C-2")  'convert-to-underline)

(global-set-key (kbd "s-<down>")  'end-of-buffer)

(global-set-key (kbd "s-<up>")  'beginning-of-buffer)
