(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/home.org"
                             "~/org/uni.org"))
;; (setq org-catch-invisible-edits 1)

(provide 'org-settings)

