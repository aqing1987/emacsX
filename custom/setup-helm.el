;;; commentary

;;; code
(use-package helm
  :bind
  ("M-x" . helm-M-x)
  ("C-x C-f" . helm-find-files)
  ("C-x b" . helm-buffers-list)
  :config
  (helm-mode 1))

(provide 'setup-helm)
;;; $
