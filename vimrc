if has("win32") || has("win64")
  source ./defaults.vim
endif

" Raw oscyank Start
" autocmd TextYankPost * echo v:event
" function! s:raw_echo(str)
"   if has('win32') && has('nvim')
"     call chansend(v:stderr, a:str)
"   else
"     if filewritable('/dev/fd/2')
"       call writefile([a:str], '/dev/fd/2', 'b')
"     else
"       exec("silent! !echo " . shellescape(a:str))
"       redraw!
"     endif
"   endif
" endfunction
" Raw oscyank End


" vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'ojroques/vim-oscyank', {'branch': 'main'}
" `:PlugInstall` to install plugins
call plug#end()


" ojroques/vim-oscyank
nmap <leader>c <Plug>OSCYankOperator
nmap <leader>cc <leader>c_
vmap <leader>c <Plug>OSCYankVisual
