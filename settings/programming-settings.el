;;; package -- summary

(projectile-mode +1)

(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)

;;; Commentary:

;;; Code:
;;--PROLOG
;; (require 'prolog-settings)

;;--SCALA
;; (require 'scala-settings)

;;-- ELISP
;; (require 'elisp-settings)

;; (require 'matlab-settings)

;; ;;--PYTHON
;; (require 'python-settings)
;; (set-ipython)
;; (set-pycomplete)
;; ;; (set-flymake)
;; (set-virtualenv)

;;--TypeScript
;; (require 'tss-settings)

;;--OCAML
;; (require 'ocaml-settings)

;;--HASKELL
;;(require 'haskell-settings)

;;--MARKDOWN
;;(require 'markdown-settings)

;;--RUST
;;(require 'rust-settings)

;; (setq-default indent-tabs-mode nil)
;; (setq-default tab-width 4)
;; (setq indent-line-function 'insert-tab)

(provide 'programming-settings)
;;; programming-settings.el ends here
