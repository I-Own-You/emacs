(set-face-attribute 'default nil :font "CommitMono" :height 150) ;; setup font

;; switch theme by removing all themes that was applied
(defun my/switch-theme (theme)
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme theme t))
(my/switch-theme 'wombat)

(provide 'ui)
