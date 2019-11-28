;;; Commentary:

;;; Code:

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (global-company-mode 1)
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-c-headers
   :init
   (add-to-list 'company-backends 'company-c-headers)
   :config
   (add-to-list 'company-c-headers-path-system "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/"))

(use-package company-lsp
  :ensure t
  :config
  (setq company-lsp-enable-snippet t)
  (push 'company-lsp company-backends))

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony))

(provide 'setup-company)
;;; $
