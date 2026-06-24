;; save most used results in vertico
(use-package savehist
  :init
  (savehist-mode 1))

;; search files by words in different orders (like fuzzy but whole words)
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (orderless-matching-styles '(orderless-literal orderless-regexp orderless-flex))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; visual enhancement for standard display
(use-package vertico
  :init
  (vertico-mode 1)
  :config
  (define-key vertico-map (kbd "C-n") 'vertico-next)
  (define-key vertico-map (kbd "C-p") 'vertico-previous))

;; eye candy for vertico
(use-package marginalia
  :init
  (marginalia-mode 1))

;; icons everywhere
(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (nerd-icons-completion-mode 1)
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))

;; display content of search results everywhere (like search, buffers, .etc
(use-package consult
  :ensure t
  :bind (("C-s" . consult-line)
         ("C-x b" . consult-buffer)
         ("C-c p f" . consult-find)
         ("C-c p g" . consult-ripgrep)))

(use-package shrink-path
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 25)
  (doom-modeline-bar-width 4)
  (doom-modeline-icon t)
  (doom-modeline-font-family "Nerd Font")
  (doom-modeline-major-mode-icon t))

(use-package magit
  :ensure t)
;;:bind ("C-x g" . magit-status))

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-auto-prefix 1)
  (corfu-quit-no-match 'separator)
  (corfu-popupinfo-delay 0.2) 
  (corfu-popupinfo-max-height 20)
  (corfu-popupinfo-max-width 80)
  :config
  (corfu-popupinfo-mode 1))

(use-package which-key
  :ensure t                       
  :init
  (setq which-key-idle-delay 0.4) 
  :config
  (which-key-mode 1))

(provide 'packages)
