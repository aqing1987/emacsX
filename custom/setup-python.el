;;; package --- summary:
;; for python development

 ;;; commentary:
;; sudo pip3 install flake8 autopep8 rope jedi importmagic yapf

 ;;; code:

(setq python-indent-guess-indent-offset-verbose nil)

;; elpy
(use-package elpy
  :init
  (elpy-enable)
  :config
  (setq elpy-rpc-python-command "python3")
  (setq python-shell-interpreter "python3")
  (when (require 'flycheck nil t)
    (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
    (add-hook 'elpy-mode-hook 'flycheck-mode))
  )

(use-package py-autopep8
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(provide 'setup-python)
 ;;; $
