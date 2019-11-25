;; disable toolbar
(tool-bar-mode -1)

;; disable menu bar
(menu-bar-mode -1)

;; disable scroll bar
(scroll-bar-mode -1)

;; show column number
(column-number-mode t)

;; disable startup screen
(setq inhibit-startup-screen t)

;; change scratch message
(setq initial-scratch-message ";; Happy Hacking\n\n")

;; disable backup file
(setq make-backup-files nil)

;; set title
(setq frame-title-format "P(A|B) = P(B|A)*P(A) / P(B)")

;; disable dialog box
(setq use-dialog-box nil)

;; addds a new line at the end of the buffer
;; for fixing: "\ No newline at end of file" issue
(setq require-final-newline t)

;; use y/n, via symbol indication process
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight current line
(global-hl-line-mode 1)


;; keep a list of recently opened files
(recentf-mode 1)
(global-set-key (kbd "<f4>") 'recentf-open-files)

;; check if emacs is running in graphical environment (not terminal)
(if (display-graphic-p)
    (progn
      (set-frame-font "-apple-Monaco-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
      (load-theme 'gandalf t)
      (setq default-frame-alist
	    '((width . 106)))))

;; copy shell environment to emacs environment
(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

(provide 'setup-general)
;;; $
