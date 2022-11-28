;;; init.el --- Arquivo de inicialização
;;  Arquivo: init.el
;;  Autor  : Marcio de Souza Maia Junior

;;; Commentary:
;;  Arquivo init.el

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2dc03dfb67fbcb7d9c487522c29b7582da20766c9998aaad5e5b63b5c27eec3f" default))
 '(package-selected-packages
   '(evil-collection evil faff-theme ggtags web-mode iedit expand-region hungry-delete beacon undo-tree yasnippet-snippets yasnippet flycheck zenburn-theme color-theme-modern color-theme auto-complete avy counsel swiper ace-window markdown-mode neotree org-bullets which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Bootstrap use-package
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Carrega arquivo de configuração myinit.org
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(provide 'init)
;;; init.el ends here
