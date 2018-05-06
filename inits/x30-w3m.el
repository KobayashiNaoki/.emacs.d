;;パスは読み替えて
;;(add-to-list 'load-path "~/path/to/emacs-w3m/")
(require 'w3m)
;;検索エンジンにGoogleを登録
(eval-after-load "w3m-search"
  '(add-to-list 'w3m-search-engine-alist
                '("google" "https://encrypted.google.com/search?num=100&ie=utf-8&oe=utf-8&hl=ja&safe=off&filter=0&pws=0&complete=0&gbv=1&q=%s" utf-8)))
;;デフォルトの検索エンジンをGoogleに設定
(setq w3m-search-default-engine "google")
;;初期ページをGoogleトップに
(setq w3m-home-page "http://www.google.co.jp")
;;cookieを使用
(setq w3m-use-cookies t)
