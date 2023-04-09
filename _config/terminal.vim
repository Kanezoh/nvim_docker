" terminalをTで開く
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
" terminalのインサートモードをESCで抜ける
:tnoremap <Esc> <C-\><C-n>
" terminalを常にインサートモードから開く
autocmd TermOpen * startinsert

