;;; Commentary:

;;; Code:

(use-package company
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (global-company-mode 1))

(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

(use-package irony
  :config
  (add-hook 'c++mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irnoy-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(provide 'setup-company)
;;; $
