;;; package -- Summary:

;;; Commentary:

;;; Code:
;;; disalbe emacs making changes, and keep the settings in a separate file
(setq custom-file (concat user-emacs-directory "custom-set-variables.el"))
(load custom-file 'noerror)

;;; init package
;; use M-x package-list-packages
;; to browse and install packages from MELPA and elsewhere
(require 'package)
(setq package-archives '(("gnu-cn"   . "https://elpa.emacs-china.org/gnu/")
                         ("melpa-cn" . "https://elpa.emacs-china.org/melpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;; load configurations
(add-to-list 'load-path (expand-file-name "~/.emacs.d/custom"))

(defmacro require-init (pkg)
  "Load self init PKG."
  `(load (file-truename (format "~/.emacs.d/custom/%s", pkg))))

(require-init 'setup-general)

(require-init 'setup-fonts)
(require-init 'setup-parens)
(require-init 'setup-org)
(require-init 'setup-flycheck)
(require-init 'setup-counsel)
(require-init 'setup-helm)
(require-init 'setup-yasnippet)
(require-init 'setup-lsp)

(require-init 'setup-company)
(require-init 'setup-python)
(require-init 'setup-cc)
(require-init 'setup-asm)

(require-init 'setup-keymap)

;;; init.el ends here
