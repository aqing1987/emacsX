;;; Commentary:
;; virtualenv -p python3 ~/.virtualenvs/p3
;; cd .virtualenvs/p3
;; source bin/activate
;; pip3 install 'python-language-server[all]'

;;; Code:

(setq python-indent-guess-indent-offset-verbose nil)

(use-package virtualenvwrapper
  :ensure t
  :config
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell))

(venv-workon "p3")
(setq lsp-python-executable-cmd "python3")

(use-package py-autopep8
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(provide 'setup-python)
 ;;; $
