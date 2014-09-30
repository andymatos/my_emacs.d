(add-to-list 'load-path "~/.emacs.d") 

;;Standard package.el + MELPA setup
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)
;(load-theme 'spolsky t)

;;Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;;yasnippet
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)


;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;ac-java
(add-to-list 'load-path "~/.emacs.d/ajc-java-complete/")
(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)

;;Load CEDET
(load-file "/usr/home/andy/Documents/cedet-1.1/common/cedet.el")
;; Enable EDE (Project Management) features
(global-ede-mode 1)
;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)
;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;;load jdee
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(load "jde")
