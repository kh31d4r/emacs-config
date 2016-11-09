; setup repositories
(require 'package)
(setq package-check-signature nil)
(setq package-archives '())
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; load custom settings from settings.org
(org-babel-load-file (expand-file-name "settings.org" user-emacs-directory))
