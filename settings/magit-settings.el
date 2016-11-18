(use-package magit
  :ensure t
  :init
  (setq magit-last-seen-setup-instructions "1.4.0")
  :bind (("C-x g" . magit-status)
         
	 ;;("C-x C-c" . with-editor-finish)
         ;;("C-x C-k" . with-editor-cancel)
         ))

(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(use-package magit-gh-pulls
  :ensure t
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))

(provide 'magit-settings)
