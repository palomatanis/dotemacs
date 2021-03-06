                                        ;--------------------------------;
;;; General or Global Settings ;;;
                                        ;--------------------------------;

;; set PATH, because we don't load .bashrc
;; function from https://gist.github.com/jakemcc/3887459
(defun set-exec-path-from-shell-PATH ()
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo -n $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

;; ;; No bars pls
;; (menu-bar-mode -1)
;; (tool-bar-mode -1)

;; Name
(setq user-full-name "Paloma Pedregal"
      user-mail-address (concat "paloma.pedregal" "@" "gmail" ".com"))

;; cool frame title with currently edited buffer name
(setq frame-title-format
      (concat "%b - " invocation-name "@" system-name))


;; utf-8 powaa!!
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-input-method nil)

;; no annoying blinking cursor
(blink-cursor-mode -1)

;; automatically indent wherever I am
(global-set-key (kbd "RET") 'newline-and-indent)
;; set the random number seed from current time and pid
(random t)

;;---------;
;;  setq's ;
;;---------;

(setq locale-coding-system 'utf-8)
;; default fill column is 70, why?
;;(setq default-fill-column 79)
;; my sentences end with a dot, not with two spaces
(setq sentence-end-double-space nil);; kill the splash screen before its birth
(setq inhibit-splash-screen t)
;; but give the emacs window a still good shape !
;;(setq initial-frame-alist '((width . 90) (height . 45))) ; .Xdefaults

(setq-default indent-tabs-mode nil)
(setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files
;; (setq linum-format "%4d \u2502") ;; theme

(setq linum-format "%4d ") ;; theme
;;(global-linum-mode 1)

(setq org-log-done 'note)


;;--------;
;;  hooks ;
;;--------;
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;-----------;
;;    Keys   ;
;;-----------;

(global-set-key (kbd "M-S-<left>") 'windmove-left)
(global-set-key (kbd "M-S-<right>") 'windmove-right)
(global-set-key (kbd "M-S-<up>") 'windmove-up)
(global-set-key (kbd "M-S-<down>") 'windmove-down)

(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<down>") 'shrink-window)
(global-set-key (kbd "M-s-<up>") 'enlarge-window)

(global-set-key [C-return] 'sublime-new-line)

(global-set-key (kbd "C-x w") 'elfeed)
(global-set-key [f4] 'goto-line)

(global-set-key [(control shift up)]  'move-text-up)
(global-set-key [(control shift down)]  'move-text-down)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  (move-beginning-of-line 1)
  )
(global-set-key (kbd "C-v") 'duplicate-line)

;;-------------;
;;Other things!;
;;-------------;

;; ;; Backup
;; (setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
;; (setq delete-old-versions -1)
;; (setq version-control t)
;; (setq vc-make-backup-files t)
;; (setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; ;; Save historial
;; (setq savehist-file "~/.emacs.d/savehist")
;; (savehist-mode 1)
;; (setq history-length t)
;; (setq history-delete-duplicates t)
;; (setq savehist-save-minibuffer-history 1)
;; (setq savehist-additional-variables
;;       '(kill-ring
;;         search-ring
;;         regexp-search-ring))


(defalias 'yes-or-no-p 'y-or-n-p)
;; ; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

(transient-mark-mode 1)
;; (setq delete-active-region nil)

;; Guardar sesion
(desktop-save-mode 1)

;; memory
(setq gc-cons-threshold 20000000)
;; (global-aggressive-indent-mode 1)
;; (nyan-mode 1)

(setq sentence-end-double-space nil)

;; winner-mode https://www.emacswiki.org/emacs/WinnerMode
(use-package winner
  :ensure t
  :defer t)


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(initial-frame-alist (quote ((fullscreen . maximized))))
;;  '(package-selected-packages (quote (elm-mode scala-mode multi-term helm matlab-mode))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

 

(defun iwb ()
"Indent whole buffer"
(interactive)
(delete-trailing-whitespace)
(indent-region (point-min) (point-max) nil)
(untabify (point-min) (point-max))
(message "Indent buffer: Done.")
)

(global-set-key (kbd "M-i") 'iwb)


(provide 'general-settings)
