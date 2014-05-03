
;;;;SPELLING;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq ispell-dictionary "en")

(add-hook 'org-mode-hook
	  (lambda()
	    (flyspell-mode 1)))

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))

(global-set-key (kbd "C-c P") 
  (lambda()(interactive)
    (ispell-change-dictionary "pl")
    (flyspell-buffer)))
