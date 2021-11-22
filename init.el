;; Added by Package.el.  This must come before configurations of installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize nil)

(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/settings/")

(require 'theme-settings)
(require 'package-settings)
(require 'general-settings)

;; (global-linum-mode 1)

(require 'linum-off)
(require 'org-settings)
(require 'magit-settings)
(require 'avy-settings)
(require 'random-requires) ;; Functions for some modes and other things
(set-undo) ;; Ctrl-z powered
(set-autoindent) ;; Thanks for indent!
(set-auto-complete) ;; Auto complete with local definitions
(set-scroll) ;; Smooth scroll ^^
(set-indent-guide)  ;; The indent vertical lines.. cute!
(set-multiple-cursors)  ;; The more, the better
(set-uniquify)  ;; Buffer names uniques! (set-auto-package) ;; Auto update all

(require 'programming-settings)

;; (require 'windows-settings)

;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(haskell-mode-hook (quote (turn-on-haskell-doc)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (kotlin-mode auctex opencl-mode ido-vertical-mode flx-ido ido-ubiquitous helm-smex color-theme-solarized color-theme-sanityinc-tomorrow helm cmake-mode erlang lua-mode htmlize avy magit ensime cider clojure-mode-extra-font-locking paredit clojure-mode flycheck-elm flycheck-haskell shm hindent hi2 ghc haskell-mode which-key use-package undo-tree sx switch-window smooth-scrolling scala-mode ranger rainbow-delimiters org multiple-cursors multi-term miniedit matlab-mode helm-systemd elm-mode discover-my-major darkokai-theme auto-indent-mode auto-complete auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;--------------------------------------------------------------------
;;  notes and reminders by Javier Donaire
;;--------------------------------------------------------------------
;;
;; - recompile .elc files after major emacs version change:
;;   (byte-recompile-directory package-user-dir nil 'force)
;;
;; - interactive functions to find or set configs:
;;     describe-variable, set-variable, describe-function,
;;     describe-key, find-library, find-function, find-variable
;;
;; - which variable holds given value: apropos-value
;;
;; - file local variables
;;   - at first first line: -*- mode: c; coding: utf-8; c-file-style: "gnu"; -*-
;;   - anywhere (remove inter spaces)
;;     <!--  L o c a l   V a r i a b l e s :  -->
;;     <!--  m o d e :   x m l                -->
;;     <!--  c o d i n g :   u t f - 8        -->
;;     <!--  E n d :                          -->
;;   - info:File Variables
;;   - emacswiki:FileLocalVariables
;;
;; - directory (recursive) local variables
;;   - M-x add-dir-local-variable
;;   - .dir-locals.el  ( (nil (general . settings)) (mode1 (settings . 1)) )
;;   - example, open .h in C++ mode: ((c-mode . ((mode . c++))))
;;
;; - macros
;;   - save: M-x name-last-kbd-macro  M-x insert-kbd-macro
;;   - active older defined: M-x kmacro-cycle-ring-next
;;   - active newer defined: M-x kmacro-cycle-ring-previous
;;
;; - emacs lisp interactive prompt (inferior emacs lisp mode): ielm
;;
;; - show differences between a buffer and its saved file: diff-buffer-with-file
;;
;; - copy the buffer for different outline/narrow: M-x clone-indirect-buffer
;;
;; - change encoding/newlines: set-buffer-file-coding-system (unix, utf-8-unix)
;;
;; - insert char by unicode id: insert-char (<24.3: ucs-insert ID)
;;   examples: #10r243, #xF3, EURO SIGN
;;
;; - describe character at point: describe-char
;;
;; - decode html entities: w3m-decode-entities-string (non-interactive)
;;
;; - recenter window: C-l; move cursor around window: M-r
;;
;; - column editing mode (like Scintilla or Visual Studio)
;;   - emacs >= 24.4
;;     - standard: C-x SPC ; movement ; supr ; C-t to write
;;     - cua not needed: M-x cua-rectangle-mark-mode ; movement ; supr ; write
;;   - emacs < 24.4
;;     - cua-mode enabled: C-RET ; movement ; supr ; write
;;
;; - swap position and mark: C-x C-x; go to previous marks: C-x C-SPC
;;
;; - remove spaces and newlines around: C-u-1 M-SPC
;;
;; - remove region without saving it to the kill ring: M-x delete-region
;;
;; - write region into another file without visiting it: write-region
;;
;; - tramp
;;   - root:   /su::/etc/passwd  or  /sudo::/etc/passwd
;;   - ssh:    /ssh:user@host:/path/filename
;;   - chain:  /ssh:user@remotehost|sudo:[user@]remotehost:/etc/passwd
;;
;; - keep paragraphs in the column limit:
;;   - hard:         fill-paragraph (M-q); inverse: unfill-paragraph (or M-q again)
;;   - hard:         refill-mode
;;   - soft:         visual-line-mode (>=23), longlines-mode (>=22)
;;   - set limit:    set-fill-column (default 70)
;;   - indentation:  set-justification-(full|left|right|center|none)
;;
;; - html-mode
;;   - jump to next or previous matching tag: C-c right  or  C-c left
;;   - toggle hide tags (kind of html rendering): C-c TAB
;;
;; - web-mode
;;   - jump to matching tag: C-c C-n
;;   - fold tag contents: C-c C-f
;;
;; - deactivate auto indentation: c-toggle-electric-state
;;
;; - show line numbers like vim: setnu-mode or linum-mode (emacs23)
;;
;; - ivy / swiper / counsel
;;   - git grep: C-c p
;;   - ripgrep: C-c k
;;   - open selection: RET  or  C-m  (without closing ivy: C-M-m)
;;   - open without closing and next/prev, useful for counsel-rg: C-M-n  or C-M-p
;;   - resume last ivy session  after close: C-c r
;;   - display actions: M-o  (without closing ivy: C-M-o)
;;   - display hydra actions: C-o
;;   - follow directory instead of opening it in dired: C-j  or  right
;;   - insert the current candidate into the minibuffer for edition: M-i
;;   - search for the word under the cursor: M-n
;;   - add substrings at the point in buffer to the search like C-w in isearch: M-j
;;   - force select exactly what has been input (ex: create new files): C-M-j
;;   - display completion keys to select faster than moving and RET: C-'
;;   - remove input: S-SPACE
;;   - show current search in an occur buffer: C-c C-o
;;   - launch replacement process for currently searched string: M-q
;;   - change to parent directory (if completion empty): BACKSPACE
;;   - change to home directory: ~
;;   - change to root directory: //
;;   - show recent opened files: C-c f
;;   - show files in current git repository: C-c g
;;   - show files recursively from current directory: C-c l  (counsel-file-jump)
;;   - show kill ring history: M-y
;;   - show list of current key bindings: M-x counsel-descbinds
;;   - show list of themes: M-x counsel-load-theme
;;   - replace in files
;;     - search with ivy, ie: counsel-git-grep, counsel-rg, counsel-ag, ...
;;     - open occur buffer with C-c C-o (ivy-occur)
;;     - toggle occur buffer to writable: C-x C-q (ivy-wgrep-change-to-wgrep-mode)
;;     - edit buffer, apply with C-c C-c (wgrep-finish-edit) or reject with C-x C-k (wgrep-abort-changes)
;;     - save all buffers: C-x s
;;
;; - tags
;;   - definition: M-.    global:gtags-find-tag   etags:find-tag  next: C-u M-.
;;   - reference:  C-.    global:gtags-find-rtag  etags:unavailable!
;;   - return:     M-,    global:gtags-pop-stack  etags:pop-tag-mark
;;   - completing: M-TAB  global:find out!        etags:complete-tag
;;   - gtags:
;;       create:  gtags
;;       update:  global -u
;;   - etags:
;;       rm TAGS; find -type f -name '*.[hc]' | xargs etags -a
;;
;; - semantic bovinator
;;   - activate: semantic-mode
;;   - jump to definition: semantic-ia-fast-jump
;;
;; - repeat last command: C-x z  ex: C-u M-. (find next tag) C-x z z z z
;;
;; - open .h/.c file or #include at point (S-F12): (C-u) ff-find-other-file
;;
;; - [CC] add a new C style based on the file: M-x c-guess
;;
;; - [CC] go to begin/end of fuctions: C-M-a / C-M-e
;;
;; - balanced expressions (parenthesis, brackets, etc)
;;   - move forward-sexp: C-M-f
;;   - move backward-sexp: C-M-b
;;   - kill-sexp: C-M-k
;;   - put mark at the end mark-sexp: C-M-SPC
;;
;; - vertically align region based on regular expression: align-regexp
;;   http://irreal.org/blog/?p=169
;;
;; - sort lines by (optionally) rectangular region: sort-columns
;;
;; - helper to create regular expressions: re-builder
;;
;; - actions when replacing with M-%:
;;   - replace and edit:  C-w
;;   - edit:              C-r
;;
;; - append following kill to kill ring, so yank pastes all: C-M-w
;;
;; - edit read-only files: read-only-mode (<24.3: toggle-read-only)
;;
;; - emacs-lock-mode is a minor mode to protect a buffer from being closed
;;
;; - insert \n without moving the cursor: C-o (open-line)
;;
;; - increment/decrement font size: C-x C-+ / C-x C-- (>=23)
;;
;; - highlight line under cursor: hl-line-mode or global-hl-line-mode
;;
;; - view a big buffer sequentially in 2 windows: follow-mode and C-x 3
;;
;; - scroll at the same time two unrelated windows: scroll-all-mode
;;
;; - dired
;;   - w: copy filename to kill ring
;;   - C-u w: copy relative path to kill ring
;;   - C-u 0 w: copy absolute path to kill ring
;;   - t: mark all files
;;   - Q: replace in marked files
;;   - M-x wdired-change-to-wdired-mode: change to writable buffer to rename files
;;   - M-x virtual-dired: use a buffer containing filenames as a dired view
;;
;; - grep or ag
;;   - automatically show matching buffer/line under cursor: next-error-follow-minor-mode
;;   - edit matches: wgrep-change-to-wgrep-mode
;;
;; - occur
;;   - edit with 'e' in occur buffer to modify original buffers
;;   - C-c C-f  automatically advance the source buffer when moving cursor in occur buffer
;;   - C-c C-c  cancel C-c C-f
;;
;; - show previously shown buffers in the window: switch-to-(prev|next)-buffer
;;
;; - calc:
;;   - prefix C-x *
;;     - help: ? ?
;;     - copy to buffer: y
;;     - embedded formula, or return to editing buffer: e
;;     - embedded word: w
;;     - grab region into calc: g
;;     - quick algebraic calculation: q
;;     - empty stack: 0
;;     - negate: n
;;     - swap last two values: TAB
;;   - usage
;;     - algebraic input: '
;;
;; - org-mode
;;   - hierarchy
;;     - show/hide element: TAB
;;     - show/hide element and its children: S-TAB
;;     - new heading: M-RET
;;     - change deep level: M-LEFT, M-RIGHT
;;     - move: M-UP, M-DOWN
;;     - convert heading to list item and reverse: 'C-c -', 'C-c *'
;;     - toggle archive in the same position: C-c C-x a
;;     - archive in the same tree: C-c C-x A
;;   - marks
;;     - to do:    'M--', 'M-+'
;;     - priority: 'M-p', 'M-n', 'C-c ,'
;;     - tags:     'C-c C-c'
;;   - checkboxes for lists
;;     - [X] toggle check:     C-c C-c
;;     - [ ] add or remove:    C-u C-c C-c
;;     - [-] toggle half done: C-u C-u C-c C-c
;;     - add new list entry with checkbox: M-S-RET
;;   - dates
;;     - modify:    M--  M-+  M-p  M-n  C-c .
;;     - timestamp: C-c .
;;     - schedule:  C-c C-s
;;     - deadline:  C-c C-d
;;   - links
;;     - anchor:  <<<foo>>>
;;     - link:    [[expr][title]], [[*expr][title]], [[file:/path][title]]
;;     - visit:   C-c C-o
;;     - return:  C-c &
;;     - link to a buffer position: org-store-link, org-insert-link
;;   - tables
;;     - copy down: C-S-RET
;;     - convert a region to a table: org-table-convert-region
;;     - recalculate: column[C-c C-c] line[C-c *] table[C-u C-c *] iterate[C-u C-u C-c *] all[C-u C-u C-c C-c]
;;     - formula editor: C-c '
;;   - literal examples
;;     - #+BEGIN_SRC ruby  ..  #+END_SRC
;;     - shortcut: write <e or <s and press TAB
;;     - edit: C-c '
;;   - export dispatcher C-c C-e
;;     - latex: l o
;;       - insert \pagebreak[1] between headers if there are lots of them without any content
;;       - open pdf with evince instead of evince-previewer:
;;         echo "evince:application/pdf" | sudo tee -a /etc/mailcap.order && sudo update-mime
;;   - scheduling
;;     - add effort property to an item: C-c C-x e  (org-set-effort)
;;     - configure and display table, refresh with C-c C-c over the BEGIN line:
;;
;;       :PROPERTIES:
;;       :COLUMNS:  %80ITEM(Task) %10Effort(Effort){:} %10TODO(Status) %10TAGS(Tags)
;;       :END:
;;
;;       #+BEGIN: columnview :hlines nil :id local :indent t :skip-empty-rows t
;;       #+END:
;;
;; - M-x term (like shell or eshell but with full curses support)
;;   - C-c C-k  term-char-mode: every char but C-c is sent to the terminal (default)
;;   - C-c C-j  term-line-mode: only full lines are sent, any other keys are like normal emacs
;;
;; - draw diagrams with picture-mode
;;   - C-c C-c  exits picture-mode clearing whitespace
;;   - C-c C-r  draw rectangle between mark and point
;;
;; - load library without failure if it doesn't exists
;;   - .emacs:  (require 'graphviz-dot-mode nil t)
;;   - some-library.el (add if not present): (provide 'graphviz-dot-mode)
;;
;; - show how long it tooks emacs to start: emacs-init-time
;;
;; - snip from my .Xresources to enable full font hinting (use Gnome Tweak Tool
;;   to enable it in gnome-terminal for nw mode):
;;
;;     Xft.antialias:  1
;;     Xft.hinting:    1
;;     Xft.hintstyle:  hintfull
;;     Xft.lcdfilter:  lcddefault
;;     Xft.rgba:       rgb
;;
;; - Uncommon elisp tutorials:
;;   - http://ergoemacs.org/emacs/elisp_common_functions.html
;;
