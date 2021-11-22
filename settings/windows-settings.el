
;; diverse configurations to emulate Microsoft Visual Studio or improve usage in Windows
(if (eq system-type 'windows-nt)
    (progn
	  (setq explicit-shell-file-name
            "C:/Program Files/Git/bin/bash.exe")
      (setq shell-file-name explicit-shell-file-name)
      (add-to-list 'exec-path "C:/Program Files/Git/bin")
      (prefer-coding-system 'utf-8-dos)
      (add-hook 'c-mode-common-hook
                (lambda ()
                  (setq indent-tabs-mode t)
                  (setq tab-width 4)))
      ;;(setq-default tab-width 4)
      (setq auto-save-default nil)
      (setq ggtags-highlight-tag nil)  ; deactivated because it is too slow in windows
      (setq counsel--git-grep-count-threshold -1)  ; don't preload every git grep result on invocation, terrible for huge repos
      ;; (global-set-key (kbd "C-c k") 'counsel-ag)  ; in windows it is faster than rg
      (setq browse-url-browser-function 'browse-url-chrome)
      (setq my-c-style-to-use "microsoft"))
  (setq my-c-style-to-use "stroustrup"))

;; C style that emulates Microsoft Visual Studio
(c-add-style "microsoft"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . -)
                (inline-open . 0)
                (inher-cont . c-lineup-multi-inher)
                (arglist-cont-nonempty . +)
                (template-args-cont . +)
                (case-label . +))))

;; settings for c derivates modes
(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style my-c-style-to-use)
            (when (derived-mode-p 'c-mode 'c++-mode)
              (ggtags-mode 1))
            (font-lock-add-keywords
             nil
             '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTE\\|NOTA\\|ASSUMPTION\\):"
                1 font-lock-warning-face t)))))


(provide 'windows-settings)
