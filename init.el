;; Added by Package.el.  This must come before configurations of
; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/settings/")

(require 'theme)
(require 'package-settings)
;;(require 'helm-settings)
;;(require 'org-settings)
(global-linum-mode 1)

(if (file-exists-p "/home/paloma/CiaoDE-1.15-1781-g328b907/emacs-mode/ciao-site-file.el")
(load-file "/home/paloma/CiaoDE-1.15-1781-g328b907/emacs-mode/ciao-site-file.el")
)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (elm-mode scala-mode multi-term helm matlab-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun iwb ()
"Indent whole buffer"
(interactive)
(delete-trailing-whitespace)
(indent-region (point-min) (point-max) nil)
(untabify (point-min) (point-max))
(message "Indent buffer: Done.")
)

(global-set-key (kbd "M-i") 'iwb)

