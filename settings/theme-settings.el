;; (add-to-list 'custom-theme-load-path "~/.emacs.d/additionalFiles/Sunburn-Theme-master/")
;; (load-theme 'sunburn t)

;;(load-theme 'darkokai t)
(load-theme 'sanityinc-tomorrow-eighties t)

(setq inhibit-startup-screen t)

;; No bars pls
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (rainbow-delimiters-mode 1)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))

(provide 'theme-settings) 
