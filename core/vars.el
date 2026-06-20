;; overrites by lisp not into my file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(setq inhibit-startup-message t) ;; turn off startup page

(setq visible-bell t)            ;; set up visible bell

(provide 'vars)
