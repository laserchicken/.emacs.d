;;;;FUNCTIONS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq local-remote-prefixes
  '(("/home/dev/Development/Smyk2.0" "https://subversion.ultimo.pl/trac/projects/browser/Smyk2.0")
    ("/home/dev/git/thefreedictionary-mode" "https://github.com/laserchicken/thefreedictionary-mode/blob")))

(defun get-matching-pair-for-file-path (file-path url-path-pairs)
  ;;if list is not empty
  (while url-path-pairs
      ;;get next pair's first element (path)
      ;;and try to match it against actual file path
      (cond ((string-match (car (car url-path-pairs)) file-path)
	     ;;if matched it will be the pair returned
	     (setq matching-pair (car url-path-pairs)) 
	     (setq url-path-pairs '()))
	    ;;if not matched remove that pair and proceed with left pairs      
	    (t (setq url-path-pairs (cdr url-path-pairs)))))
  matching-pair)

(defun show-file-repo-browser (branch &optional tag)
  "Browse code from buffer on a dedicated repo web site"
  (interactive "sBranch: \nsTag: ")
  ;;file-prefix is local file path prefix which
  ;;will be replaced with url-prefix for remote repo browser,
  ;;rest of path is supposed to be the same
  ;;for both remote browser url and local path
  (let* ((file-path (buffer-file-name))
	 (pair (get-matching-pair-for-file-path file-path
						local-remote-prefixes))
	 (create-url-prefix (lambda (url-prefix branch tag)
	   (concat url-prefix
		   "/" branch
		   (if (not (equal tag ""))
		       (concat "/" tag))))))
      (if pair
	  (shell-command
	   (concat browse-url-generic-program
		   " "
		   (replace-regexp-in-string (car pair)
					     (concat (car (cdr pair))
						     "/" branch
						     (if (not (equal tag ""))
							 (concat "/" tag)))
					     file-path)))
	(message "No local-remote-prefixes pair defined"))))


;;;;GOOGLE TRANSLATE;;;;;;;;;;;;;;;;;;;;;;;
;;http://oleksandrmanzyuk.wordpress.com/2011/09/21/using-google-translate-from-emacs/
(defun google-translate (text)
  (interactive
   (list
    (read-from-minibuffer "Translate: ")))
  (with-output-to-temp-buffer "*Google Translate*"
    (set-buffer "*Google Translate*")
    (insert (format "%s" text))
    (facemenu-set-face 'bold (point-min) (point-max))
    (insert (format "\n\n%s"
                    (shell-command-to-string
                     (format "translate \"%s\"" text))))))
