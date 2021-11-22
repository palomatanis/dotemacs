;;; package -- summary

(projectile-mode +1)

(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)

;;; Code:

;;-- ELISP
(require 'elisp-settings)

(require 'matlab-settings)

;; ;;--PYTHON
;; (require 'python-settings)
;; (set-ipython)
;; (set-pycomplete)
;; ;; (set-flymake)
;; (set-virtualenv)

;;--HASKELL
;;(require 'haskell-settings)


;;--MARKDOWN
;;(require 'markdown-settings)


(provide 'programming-settings)
;;; programming-settings.el ends here
