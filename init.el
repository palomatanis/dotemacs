;; Added by Package.el.  This must come before configurations of
; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize nil)

(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/settings/")

(require 'theme-settings)

;;(set-linum)
;;(set-full-paren)
;;(set-sanityinc)

(require 'package-settings)

(require 'general-settings)


;; ;;(require 'helm-settings)
(global-linum-mode 1)


(require 'linum-off)
;; ;;(require 'term-settings)
;; ;;(set-multi-term)
;; ;;;; (set-emux)
;; ;;;; (emux-default-sessions)

;; ;;(require 'org-settings)



;; (require 'random-requires) ;; Functions for some modes and other things
;; (set-undo) ;; Ctrl-z powered
;; (set-autoindent) ;; Thanks for indent!
;; (set-auto-complete) ;; Auto complete with local definitions
;; (set-scroll) ;; Smooth scroll ^^
;; (set-indent-guide)  ;; The indent vertical lines.. cute!
;; (set-pair)  ;; How to pair? autopair or smartparens?
;; (set-multiple-cursors)  ;; The more, the better
;; (set-uniquify)  ;; Buffer names uniques! (set-auto-package) ;; Auto update all


(require 'programming-settings)



;;; init.el ends here



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-doc)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (ensime cider clojure-mode-extra-font-locking paredit clojure-mode flycheck-elm flycheck-haskell shm hindent hi2 ghc haskell-mode which-key use-package undo-tree sx switch-window smooth-scrolling scala-mode ranger rainbow-delimiters org multiple-cursors multi-term miniedit matlab-mode helm-systemd elm-mode discover-my-major darkokai-theme auto-indent-mode auto-complete auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
