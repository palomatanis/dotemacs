(require 'org)

;; ;; org-mode
;; (use-package org
;;   :ensure org-plus-contrib
;;   :pin org
;;   :mode ("\\.org$" . org-mode)
;;   :config
;;   ;; increase number of lines in which emphasis markup will be applied
;;   (setcar (nthcdr 4 org-emphasis-regexp-components) 6)
;;   (org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
;;   ;; load additional export methods
;;   (require 'ox-odt nil t)
;;   (require 'ox-md nil t)
;;   (require 'ox-freemind nil t)
;;   (require 'ox-texinfo nil t))


(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; (setq org-agenda-files (list "~/org/home.org"
;;                              "~/org/uni.org"))

(setq org-catch-invisible-edits 1)

;; hide asterisks and indent headers in org-mode
(setq org-indent-indentation-per-level 1
      org-startup-indented t)

;; open files with .org extension with org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; keywords for org-mode
(setq org-todo-keywords '((sequence "TODO" "DOING" "BLOCKED" "REJECTED" "DONE" ))
      ;; org-todo-keyword-faces '(("TODO"      . (:foreground "magenta" :weight bold))
      ;;                          ("DOING"     . (:foreground "orange" :weight bold))
      ;;                          ("NEEDINFO"  . (:foreground "red" :weight bold))
      ;;                          ("DELEGATED" . (:foreground "blue" :weight bold))
      ;;                          ("REVIEW"    . (:foreground "yellow" :weight bold))
      ;;                          ("REJECTED"  . (:foreground "lightblue" :weight bold))
      ;;                          ("DONE"      . org-done)
      ;;                          ("ARCHIVED"  . (:foreground "lightblue" :weight bold)))
      )

;; enable visual-line-mode (long lines soft wrap) for org-mode files
(add-hook 'org-mode-hook (lambda () (visual-line-mode t)))


(setq org-agenda-files (list "~/org/home.org"
                             "~/org/uni.org"))
;; (setq org-catch-invisible-edits 1)

(provide 'org-settings)

