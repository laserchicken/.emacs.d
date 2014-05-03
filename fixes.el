
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;https://gist.github.com/tkf/3951163
;; Workaround the annoying warnings:
;; Warning (mumamo-per-buffer-local-vars):
;; Already 'permanent-local t: buffer-file-name
(when (and (>= emacs-major-version 24)
	   (>= emacs-minor-version 2))
(eval-after-load "mumamo"
  '(setq mumamo-per-buffer-local-vars
	 (delq 'buffer-file-name mumamo-per-buffer-local-vars))))

;;for following warnings:
;;Warning: `font-lock-beginning-of-syntax-function' is an obsolete variable (as
;;    of 23.3); use `syntax-begin-function' instead.
;;Warning: `font-lock-syntactic-keywords' is an obsolete variable (as of 24.1);
;;    use `syntax-propertize-function' instead.
;;I changed (renamed) functions in mumamo.el file.
