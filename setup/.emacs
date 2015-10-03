

;; Add melpa stable to package archives, possible alternative is MELPA regular:
;; '("melpa" . "http://melpa.org/packages/")
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
   t)
  (package-initialize))


;; Set initial window size and position
(when (window-system)
  (set-frame-height (selected-frame) 48)
    (set-frame-width (selected-frame) 195)
    (set-frame-position (selected-frame) 100 0))


;; Setup jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   ; optional
(add-hook 'python-mode-hook 'semantic-mode)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "jedi-direx")
(eval-after-load "python"
  '(define-key python-mode-map "\C-cx" 'jedi-direx:switch-to-buffer))
(add-hook 'jedi-mode-hook 'jedi-direx:setup)



;; Setup Helm
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "<tab>") 'indent-for-tab-command)

;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "C-i")  'helm-semantic)

;(when (executable-find "curl")
;  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-split-window-default-side   'below ; helm buffer below
      ;helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      ;helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      ;helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
					;helm-ff-file-name-history-use-recentf t)
      )
(helm-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
