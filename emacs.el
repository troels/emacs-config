(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "/home/troels/.emacs-backups/"))))
 '(delete-old-versions t)
 '(desktop-save-mode t)
 '(focus-follows-mouse nil)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode nil)
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

;;Ipython-mode
(setq ipython-command "/usr/bin/ipython")
(require 'python-mode)
(require 'ipython)

;;Pymacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")