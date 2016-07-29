;; Add melpa stable to package archives
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

;; Activate jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;; Make sematic mode start when loading python files
(add-hook 'python-mode-hook 'semantic-mode)


;; Start and configure helm
(require 'helm)
(require 'helm-config)
;; Give me my tab key back
(global-set-key (kbd "<tab>") 'indent-for-tab-command)
(global-set-key (kbd "C-i")  'helm-semantic)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-map (kbd "<backtab>") 'helm-find-files-up-one-level)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
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
