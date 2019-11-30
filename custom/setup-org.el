;;; package --- Summary:

;;; Commentary:

;;; Code:

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;;; setup-org.el ends here
