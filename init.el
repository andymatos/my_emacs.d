(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)
;(load-theme 'spolsky t)
