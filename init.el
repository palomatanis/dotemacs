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

;;(require 'general-settings)

;; ;;(require 'helm-settings)
;; (global-linum-mode 1)

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



