(require 'package)

(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives
               '("melpa"."http://melpa.org/packages/")))

(unless (assoc-default "marmalade" package-archives)
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/")))

(unless (assoc-default "elpy" package-archives)
  (add-to-list 'package-archives
               '("elpy" . "https://jorgenschaefer.github.io/packages/")))

;; Comment this after first run!
;; (package-refresh-contents)

;; use-package (https://github.com/jwiegley/use-package)
;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))
(setq use-package-verbose t)
(require 'use-package)
(use-package auto-compile
  :ensure t
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

;; Secrets
;;(load "~/.emacs.secrets" t)

(setq package-enable-at-startup nil)
(package-initialize)


(provide 'package-settings)
