" color base16-default
" set background=dark
color summerfruit256
" set background=light
noremap <leader>d :color base16-default<CR>:set background=dark<CR>
noremap <leader>l :color summerfruit256<CR>:set background=light<CR>

" Turn off bell
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

nmap <Leader>j :SplitjoinJoin<cr>
nmap <Leader>s :SplitjoinSplit<cr>
nmap <Leader>wk <C-W>k<C-W>_
nmap <Leader>wj <C-W>j<C-W>_

set autoindent
set hidden
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
noremap <leader>r :set relativenumber<CR>
noremap <leader>n :set number<CR>
noremap <leader>m :set number<CR>:set nonumber<CR>

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
let @k = 'ddkP'
let @j = 'ddp'
noremap <leader>K ddkP
noremap <leader>J ddp
noremap <leader>p :set paste<CR>
noremap <leader>o :set nopaste<CR>
filetype indent plugin on
nnoremap ! :Clam<space>
vnoremap ! :ClamVisual<space>
noremap <leader>! :Clam<space>
let g:instant_markdown=0
noremap <leader>M :let g:instant_markdown=1<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC

  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  " autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
  " autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
  " autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufNewFile,BufRead *.mustache set filetype=html
  autocmd BufNewFile,BufRead *.scss set filetype=css
endif
