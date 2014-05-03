
;;;;SQL;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;highlight postgres keywords in sql-mode by default
(add-hook 'sql-mode-hook
	  (lambda ()
	    (sql-highlight-postgres-keywords)))
