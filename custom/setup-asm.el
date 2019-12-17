;;; package --- Summary:

;;; Commentary:

;;; Code:
(require 'asm-mode)
(add-hook 'asm-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil) ; use spaces to indent
	    (electric-indent-mode -1) ; indentation in asm-mode is annoying
	    (setq tab-stop-list (number-sequence 2 60 2))))

(define-key asm-mode-map (kbd "<ret>") 'newline-and-indent)
(define-key asm-mode-map (kbd "<backtab>") 'company-complete)

(provide 'setup-asm)
;;; setup-asm.el ends here
