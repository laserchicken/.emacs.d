
;;;;LOG4J;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;m.in. koloruje i ulatwia filtrowanie plikow z logami log4j
;;problem pojawia sie z wiekszymi plikami (>256KB tzn. tyle ile wynosi default dla (font-lock-maximum-size))
;;poniewaz takie pliki z logami wystepuja rzadko, postanowilem nie ruszac tej zmiennej
(autoload 'log4j-mode "~/.emacs.d/log4j-mode.el" "Major mode for viewing log files." t)

;;akceptuje rowniez pliki typu "server.log.2013-04-12"
;;TODO : wyrazenie nie jest zupelnie poprawne
(add-to-list 'auto-mode-alist '("\\.log\\.?.*\\'" . log4j-mode))
