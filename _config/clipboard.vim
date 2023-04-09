" clipboardを使用
set clipboard=unnamed
" wslでyankとクリップボードと同期するための設定
if system('uname -a | grep Microsoft') != ''
  augroup myYank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe', @")
  augroup END
endif

