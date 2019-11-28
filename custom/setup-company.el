;;; Commentary:

;;; Code:

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (global-company-mode 1)
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-lsp
  :ensure t
  :config
  (setq company-lsp-enable-snippet t)
  (push 'company-lsp company-backends))

(provide 'setup-company)
;;; $
