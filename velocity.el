
;;;;VELOCITY MODE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/emacs/emacs-23.4/site-lisp")
(autoload 'velocity-mode "vtl" nil t)
(add-hook 'html-mode-hook 'velocity-mode t t)
(add-hook 'xml-mode-hook 'velocity-mode t t)
(add-hook 'text-mode-hook 'velocity-mode t t)
