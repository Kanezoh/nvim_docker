" quickfixのショートカット
nnoremap cp :cprevious<CR>
nnoremap cn :cnext<CR>
" vimgrep使用時に結果をQuickFixで開く
autocmd QuickFixCmdPost *grep* cwindow
