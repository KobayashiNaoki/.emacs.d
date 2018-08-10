(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く
    tabbar
    markdown-mode
    jedi
    py-autopep8
    flymake
    flymake-cursor
    flymake-easy
    flymake-python-pyflakes
    ;;w3m
    highlight-symbol
    web-mode
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
