;;; Commentary:

;;; Code:

;; set up my own map
(define-prefix-command 'z-map)
(global-set-key (kbd "C-z") 'z-map)
(define-key z-map (kbd "k") 'compile)
(define-key z-map (kbd "g") 'counsel-ag)
(define-key z-map (kbd "*") 'calc)

(provide 'setup-keymap)
;;; $
