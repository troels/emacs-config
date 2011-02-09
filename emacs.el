(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "/home/troels/.emacs-backups/"))))
 '(delete-old-versions t)
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(elscreen-display-tab nil)
 '(elscreen-tab-display-control nil)
 '(focus-follows-mouse nil)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode nil)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "grey10" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))


;; Magit-mode
(autoload 'magit-status "magit" nil t)
(global-set-key (kbd "s-g") 'magit-status)
;;Ipython-mode
(setq ipython-command "/usr/bin/ipython")
(require 'python-mode)
(require 'ipython)

;;Pymacs
(require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

;; Haskell mode
(autoload 'haskell-mode "haskell-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.hs" 'haskell-mode))

;; elscreen
(load "elscreen" "ElScreen" t)
