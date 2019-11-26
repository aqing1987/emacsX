;;; Commentary:

;;; Code:

;; highlight brackets
(show-paren-mode 1)

(use-package smartparens
  :config
  (require 'smartparens-config)
  (show-smartparens-global-mode +1)
  (smartparens-global-mode 1))

(provide 'setup-parens)
;;; $
