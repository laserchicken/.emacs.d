;;ansi color vector customization (for shell mode)
;;when background color is black, blue should be CadetBlue1 for instance
;;otherwise ls dirs color is not well visible
;;;M-x list-colors-display to list available colors

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq ansi-color-names-vector
  ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
