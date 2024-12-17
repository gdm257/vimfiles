if has("win32") || has("win64")
  source ./defaults.vim
endif

set termencoding=utf-8
set encoding=utf8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,euc-jp,cp932,sjis,euc-kr
set jumpoptions=stack

if has("win32") || has("win64")
  " 取消光标闪烁（貌似没用）
  set novisualbell


  " Set cursor shape and color
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[6 q"
  let &t_EI = "\<Esc>[6 q"
  " if &term =~ "xterm"
  "     " INSERT mode
  "     " let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;blue\x7"
  "     let &t_SI = "\<Esc>[6 q"
  "     " REPLACE mode
  "     " let &t_SR = "\<Esc>[6 q" . "\<Esc>]12;black\x7"
  "     let &t_SR = "\<Esc>[6 q"
  "     " NORMAL mode
  "     " let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"
  "     let &t_EI = "\<Esc>[2 q"
  " endif
  " 1 -> blinking block  闪烁的方块
  " 2 -> solid block  不闪烁的方块
  " 3 -> blinking underscore  闪烁的下划线
  " 4 -> solid underscore  不闪烁的下划线
  " 5 -> blinking vertical bar  闪烁的竖线
  " 6 -> solid vertical bar  不闪烁的竖线
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


" Key bindings
" let mapleader = ','
" let g:mapleader = ','
" let mapleader = "\<space>"
" let g:mapleader = "\<space>"

" ojroques/vim-oscyank
nmap <leader>c <Plug>OSCYankOperator
nmap <leader>cc <leader>c_
vmap <leader>c <Plug>OSCYankVisual
