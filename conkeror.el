;;conkeror as default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "~/bin/conkeror")


;;http://emacs-fu.blogspot.com/2010/12/conkeror-web-browsing-emacs-way.html
;;it lets to capture from conkeror 
;;the 'w' corresponds with the 'w' used before as in:
;;emacsclient \"org-protocol:/capture:/w/  [...]

(setq org-capture-templates
      (quote
       (("t" "todo" entry (file+headline "praca.org" "inbox")
         "* TODO %?%a\n %U\n"
         :clock-in t
         :clock-resume t)
	("w" "" entry (file+headline "praca.org" "inbox")
	 "* %^{Title}\n   %u,\n Source: %c\n\n  %i")
	)))
