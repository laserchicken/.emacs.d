
;;;;TRAMP;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; sluzy do otwierania plikow zdalnie po ssh
;;(require 'tramp)
;;(setq tramp-default-method "ssh")
;;(setq tramp-shell-prompt-pattern "^[^>$][>$] *")

(add-to-list 'load-path "~/emacs/emacs-23.4/site-lisp/tramp-2.2.6/lisp/")
(require 'tramp)
;;(setq tramp-shell-prompt-pattern "^.*[>$] *")
(setq tramp-shell-prompt-pattern "^[^>$][>$] *")
;;(host user proxy)
