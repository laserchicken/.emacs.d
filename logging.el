;;;;LOG4J;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;filter and color log files
;;there is a problem with larger files (>256KB - default for font-lock-maximum-size variable)
(autoload 'log4j-mode "~/.emacs.d/log4j-mode.el" "Major mode for viewing log files." t)

;;accept also files named "server.log.2013-04-12"
;;TODO : regexp
(add-to-list 'auto-mode-alist '("\\.log\\.?.*\\'" . log4j-mode))
