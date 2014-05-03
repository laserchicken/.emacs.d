;;;;OCTOPRES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;http://blog.paphus.com/blog/2012/08/01/introducing-octopress-blogging-for-org-mode/
(require 'org-octopress)

(defun save-then-publish ()
  (interactive)
  (save-buffer)
  (org-save-all-org-buffers)
  (org-publish-current-project))

(setq org-publish-project-alist
      '(("blog-org" .  (:base-directory "~/blog/octopress/source/org_posts/"
					:base-extension "org"
					:publishing-directory "~/blog/octopress/source/_posts/"
					:sub-superscript ""
					:recursive t
					:publishing-function org-publish-org-to-octopress
					:headline-levels 4
					:html-extension "markdown"
					:octopress-extension "markdown"
					:body-only t))
	("blog-extra" . (:base-directory "~/blog/octopress/source/org_posts/"
					 :publishing-directory "~/blog/octopress/source/"
					 :base-extension "css\\|pdf\\|png\\|jpg\\|gif\\|svg"
					 :publishing-function org-publish-attachment
					 :recursive t
					 :author nil
					 ))
	("blog" . (:components ("blog-org" "blog-extra")))
	))

;;I don't use document title in my org posts (post has it title istead).
;;Common headers hierarchy is expected by my octpress theme.
(setq org-export-octopress-toplevel-hlevel 1)
