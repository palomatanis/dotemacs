                                        ;--------------------------------;
;;; General or Global Settings ;;;
                                        ;--------------------------------;

;; ;; set PATH, because we don't load .bashrc
;; ;; function from https://gist.github.com/jakemcc/3887459
;; (defun set-exec-path-from-shell-PATH ()
;;   (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
;;   (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo -n $PATH'")))
;;     (setenv "PATH" path-from-shell)
;;     (setq exec-path (split-string path-from-shell path-separator))))

;; (set-exec-path-from-shell-PATH)

;; ggtags-executable-directory

;; ;; No bars pls
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Open new files in already opened frame if it exists
(setq ns-pop-up-frames nil)

;; Use visual bell instead of sound
(setq visible-bell 1)

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

;;(setq-default indent-tabs-mode nil)
;; backspace removes tabs instead of untabifying and removing just one space
(setq backward-delete-char-untabify-method nil)

;; period single space ends sentence
(setq sentence-end-double-space nil)

;; scroll with 1-line steps
(setq scroll-step 1
      scroll-preserve-screen-position t
      scroll-conservatively 99999)

;; always leave some lines of context when the cursor is moved to the top/bottom
(setq scroll-margin 2)

;; middle mouse button paste at cursor position instead of mouse position
(setq mouse-yank-at-point t)

;; never overflow lines
(toggle-truncate-lines 1)
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

;;(setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files

(setq org-log-done 'note)


;;--------;
;;  hooks ;
;;--------;
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;-----------;
;;    Keys   ;
;;-----------;

(global-set-key (kbd "C-{") 'windmove-left)
(global-set-key (kbd "C-}") 'windmove-right)
;; (global-set-key (kbd "C-}") 'windmove-up)
;; (global-set-key (kbd "C-{") 'windmove-down)

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

;; Backup
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

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

;; open links to files in version control without asking
(setq vc-follow-symlinks nil)


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


;; load and configure ivy/swiper/counsel completion framework
;; (use-package wgrep :ensure t)
(use-package hydra :ensure t)
(use-package counsel :ensure t)
(use-package ivy-hydra :ensure t)
(use-package smex :ensure t
  :config
  (setq smex-save-file (expand-file-name "cache/smex-items" user-emacs-directory)))
(use-package ivy :ensure t
  :diminish (ivy-mode . "")
  :init
  (ivy-mode 1)
  :config
  (setq ivy-height 20
        ivy-use-virtual-buffers t
        ivy-count-format "(%d/%d) "
        ivy-dynamic-exhibit-delay-ms 200)
  ;; Update which-function after a match is visualized without closing ivy
  ;; (C-M-m, C-M-n, C-M-p) or in swiper with each highlighted result

  ;; (defun which-func-update-ivy () (which-func-update-1 (ivy--get-window ivy-last)))
  ;; (advice-add 'ivy-call :after #'which-func-update-ivy)
  ;; (advice-add 'swiper--update-input-ivy :after #'which-func-update-ivy)
  :bind
  ("C-c M-x" . execute-extended-command)
  ("C-s" . swiper)
  ("M-x" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("<f1> f" . counsel-describe-function)
  ("<f1> v" . counsel-describe-variable)
  ("<f1> l" . counsel-find-library)
  ("<f2> i" . counsel-info-lookup-symbol)
  ("<f2> u" . counsel-unicode-char)
  ("C-c f" . counsel-recentf)
  ("C-c g" . counsel-git)
  ("C-c p" . counsel-git-grep)
  ("C-c k" . counsel-rg)
  ("C-c l" . counsel-file-jump)
  ("C-c r" . ivy-resume)
  ("M-y" . counsel-yank-pop))


;; (set-variable 'ggtags-executable-directory "c:/Users/u64177/tools/global/bin")
;; (set-variable 'ggtags-executable-directory "c:/Users/ppedregalh/.emacs.d/")

;; third party emacs mode for using global tags
(when (>= emacs-major-version 25)
  (use-package ggtags :ensure t
    :bind ("C-." . ggtags-find-reference)))
(setq ggtags-oversize-limit (* 1 1024 1024))  ; reduce threshold to update whole GTAGS

(provide 'general-settings)
