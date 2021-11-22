;;; hi2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hi2" "hi2.el" (0 0 0 0))
;;; Generated autoloads from hi2.el

(autoload 'hi2-mode "hi2" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

If called interactively, enable Hi2 mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-hi2 "hi2" "\
Turn on the hi2 minor mode." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hi2" '("hi2-" "on-parse-error" "parse-error")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hi2-autoloads.el ends here
