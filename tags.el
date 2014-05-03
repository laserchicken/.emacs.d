;;;;ETAGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;creates tags for (java) files in dir recursively
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command 
   (format "find %s -type f -name \"*.java\" | etags -" dir-name)))


;;;;JTAGS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;etags for java code
;;(add-to-list 'load-path "~/emacs/emacs-23.4/site-lisp")

;;(autoload 'jtags-extras "jtags-extras" "Load jtags-extras.")
;;(add-hook 'java-mode-hook 'jtags-extras)

(add-hook 'java-mode-hook 'ggtags-mode)
(add-hook 'js-mode-hook 'ggtags-mode)
(add-hook 'ruby-mode-hook 'ggtags-mode)
(add-hook 'scheme-mode-hook 'ggtags-mode)
