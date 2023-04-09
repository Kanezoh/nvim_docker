" netrwの設定
" ls -laのような表示になります
let g:netrw_liststyle=1

" サイズを(K,M,G)で表示
let g:netrw_sizestyle="H"

" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"

" ヘッダを非表示にする
let g:netrw_banner=0

" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1

" 左右分割を右側に開く
let g:netrw_altv = 1

" 分割で開いたときに50%のサイズで開く
let g:netrw_winsize = 50

" 表示形式をTreeViewに変更
let g:netrw_liststyle = 3

" Enterで、タブ表示
let g:netrw_browse_split = 3
