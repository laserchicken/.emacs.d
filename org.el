(add-to-list 'load-path "/usr/share/emacs/23.3/lisp/org")
(require 'org-install)
(require 'org-protocol)

(setq org-directory (expand-file-name "~/org"))

(setq org-todo-keywords
      (quote ((sequence
               "TODO(t)"
               "NEXT(n)"
               "STARTED(s)"
               "|" "DONE(d!/!)" "CANCELLED(c@/!)")
              (sequence "INBOX"))))

;;don't want to export words with underscore as lower index
(setq org-export-with-sub-superscripts nil)

;;;;AGENDA;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;;;CAPTURE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-default-notes-file (concat org-directory "/praca.org"))
(define-key global-map "\C-cc" 'org-capture)


;;;;BABEL;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-ditaa-jar-path "~/emacs/diagram_tools/ditaa/ditaa0_9.jar")
(setq org-plantuml-jar-path "~/emacs/diagram_tools/plantuml/plantuml.jar")

(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")

(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))

;; Don't enable this because it breaks access to emacs from my Android phone
(setq org-startup-with-inline-images nil)

;;turn on `org-indent-mode' (clean view) on startup
(setq org-startup-indented t)
