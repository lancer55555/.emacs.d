;; [[file:~/.emacs.d/settings.org::*no%20gui%20elements][no gui elements:1]]
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(setq inhibit-startup-message t)
;; no gui elements:1 ends here

;; [[file:~/.emacs.d/settings.org::*no%20backups][no backups:1]]
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)
;; no backups:1 ends here

;; [[file:~/.emacs.d/settings.org::*y-or-n][y-or-n:1]]
(defalias 'yes-or-no-p 'y-or-n-p)
;; y-or-n:1 ends here

;; [[file:~/.emacs.d/settings.org::*no%20bell][no bell:1]]
(setq ring-bell-function 'ignore)
;; no bell:1 ends here

;; [[file:~/.emacs.d/settings.org::*pretty%20symbols][pretty symbols:1]]
(when window-system (global-prettify-symbols-mode t))
;; pretty symbols:1 ends here

;; [[file:~/.emacs.d/settings.org::*line%20highlight][line highlight:1]]
(when window-system (global-hl-line-mode t))
;; line highlight:1 ends here

;; [[file:~/.emacs.d/settings.org::*better%20scrolling][better scrolling:1]]
(setq scroll-conservatively 100)
;; better scrolling:1 ends here

;; [[file:~/.emacs.d/settings.org::*Setting%20default%20shell%20to%20bash][Setting default shell to bash:1]]
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(global-set-key (kbd "<s-return>") 'ansi-term)
;; Setting default shell to bash:1 ends here

;; [[file:~/.emacs.d/settings.org::*package%20which-key][package which-key:1]]
(use-package which-key
  :ensure t
  :init
  (which-key-mode))
;; package which-key:1 ends here

;; [[file:~/.emacs.d/settings.org::*package%20beacon][package beacon:1]]
(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))
;; package beacon:1 ends here

;; [[file:~/.emacs.d/settings.org::*Org%20Bullets][Org Bullets:1]]
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))
;; Org Bullets:1 ends here

;; [[file:~/.emacs.d/settings.org::*enable%20ido%20mode][enable ido mode:1]]
(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)
;; enable ido mode:1 ends here

;; [[file:~/.emacs.d/settings.org::*ido-vertical][ido-vertical:1]]
(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
;; ido-vertical:1 ends here

;; [[file:~/.emacs.d/settings.org::*smex][smex:1]]
(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))
;; smex:1 ends here

;; [[file:~/.emacs.d/settings.org::*switch%20buffer][switch buffer:1]]
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
;; switch buffer:1 ends here

;; [[file:~/.emacs.d/settings.org::*enable%20ibuffer][enable ibuffer:1]]
(global-set-key (kbd "C-x b") 'ibuffer)
;; enable ibuffer:1 ends here

;; [[file:~/.emacs.d/settings.org::*expert][expert:1]]
(setq ibuffer-expert t)
;; expert:1 ends here

;; [[file:~/.emacs.d/settings.org::*avy][avy:1]]
(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))
;; avy:1 ends here
