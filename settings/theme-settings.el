;; (load-theme 'darkokai t)

(add-to-list 'custom-theme-load-path "C:Users/ppedregalh/.emacs.d/additionalFiles/Sunburn-Theme-master/")
(load-theme 'sunburn t)

;;(load-theme 'sanityinc-tomorrow-eighties t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 110 :width normal)))))

;; (defvar cfg-font-ttf "monospace-10")
;; (defvar cfg-font-x "-misc-fixed-medium-r-normal--*-*-*-*-*-90-iso8859-*")

(set-face-attribute 'default nil :height 110)


(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; (setq linum-format "%4d \u2502 ") ;; theme
;;(global-linum-mode -1)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; (rainbow-delimiters-mode 1)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))


(provide 'theme-settings) 
