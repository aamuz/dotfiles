syntax enable

map <F8> :setlocal spell! spelllang=en_gb<CR>

set title
set ruler
set showmatch
set ignorecase
set incsearch
set hlsearch
set bs=2
set nobackup
set number
set encoding=utf-8
set relativenumber

"set diffopt+=iwhite " Ignore whitespace whilst diffing

set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=4
set softtabstop=4
set tabstop=4

set background=dark

set undofile
set undodir=/tmp

syntax on
filetype plugin indent on
set nofoldenable

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_debug = 1

nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

" Go specific mapping
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au filetype go nmap <leader>t :w<CR>:GoTestFunc<CR>
au filetype go nmap <leader>T :w<CR>:GoTest<CR>
au filetype go nmap <leader>r :w<CR>:GoRun<CR>
au FileType go nmap <F12> <Plug>(go-def)

augroup GoDebug
  autocmd!
  au FileType go nmap <F5> :GoDebugStart<CR>
augroup END

set wildmode=longest,list,full
set wildmenu

" https://youtu.be/PEm0QJ46hNo
inoremap <C-H> <C-W>

let g:indent_guides_enable_on_vim_startup = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap ; :
vnoremap ; :
inoremap jk <Esc>
nnoremap jk <Esc>
cnoremap jk <Esc>
vnoremap jk <Esc>
