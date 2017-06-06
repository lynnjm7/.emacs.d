;; Turn off startup screen
(setq inhibit-startup-screen t)

;; Display line numbers in gutter on startup
(global-linum-mode 1)

;; Turn off backup files (i.e '~' files)
(setq make-backup-files nil)

;; Use spaces instead of tabs
;; Set tab width to be 4 spaces
;; Update aliases for C and Perl (as per EmacsWiki docs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq c-basic-offset 4) ;; special setting for c-mode indentation...

;; Package Repositories
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
	     '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Load packages 
(package-initialize)
(setq package-enable-at-startup nil)

;; Setup use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; Install and set monokai theme
(use-package monokai-theme :ensure t :pin melpa)
(load-theme 'monokai t)

;; Install rust-mode
(use-package rust-mode :ensure t :pin melpa)

