;;;;ECB;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;emacs code browser
;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another 
;; package (Gnus, auth-source, ...).
;;(load-file "~/emacs/cedet-1.1/common/cedet.el")

;; Enable EDE (Project Management) features
;;(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;;(ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode,
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;;(semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberant ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languages only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

;;(add-to-list 'load-path "~/emacs/emacs-23.4/site-lisp/ecb-snap")
;;(load-file "~/emacs/emacs-23.4/site-lisp/ecb-snap/ecb.el")

;;(global-ede-mode 1)
;;(semantic-load-enable-code-helpers)
;;(global-srecode-minor-mode 1)
;;(require 'ecb)
;;(require 'jde)

(semantic-mode 1)
(global-ede-mode 1)
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
(global-semantic-idle-summary-mode 1)

(setq ecb-tip-of-the-day nil)  ;;wylacza tip of the day - wyskakiwalo niepotrzebne okienko

;;;;JAVA MODE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;tab is 4 not 8 spaces
;;both in newly created and loaded source
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 4
                                  tab-width 4
                                  indent-tabs-mode t)))
