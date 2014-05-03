;;; cperl-mode is preferred to perl-mode                                        
;;; "Brevity is the soul of wit" <foo at acm.org>                               
(defalias 'perl-mode 'cperl-mode)

;;turn off space underline
(setq cperl-invalid-face nil)

;; Turns on most of the CPerlMode options
(setq cperl-hairy t)

;;comments
(global-set-key (kbd "C-;") 'comment-dwim)
