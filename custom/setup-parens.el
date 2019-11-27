;;; Commentary:

;;; Code:

(use-package smartparens
  :ensure t
  :hook (prog-mode . smartparens-mode)
  :custom
  (sp-escape-quotes-after-insert nil)
  :config
  (require 'smartparens-config))

;; highlight brackets
(show-paren-mode t)

(provide 'setup-parens)
;;; $
