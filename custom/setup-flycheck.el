;;; Commentary:

;;; Code:

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

;; (use-package flycheck-color-mode-line
;;   :ensure t
;;   :init
;;   (eval-after-load "flycheck"
;;     '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)))

(use-package flycheck-pos-tip
  :ensure t
  :init
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode)))

;; set aspell for flyspell
(setq ispell-program-name "/usr/local/bin/aspell")

(provide 'setup-flycheck)
;;; $
