;;(load-theme 'darkokai t)
(load-theme 'sanityinc-tomorrow-eighties t)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (rainbow-delimiters-mode 1)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))


(provide 'theme-settings) 
