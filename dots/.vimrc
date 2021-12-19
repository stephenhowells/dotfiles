set nocompatible
filetype off
set encoding=utf-8
set ignorecase                  " ignore case when searching
set timeout timeoutlen=200 ttimeoutlen=100

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Bundles Here
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'vim-syntastic/syntastic'
" Plugin 'morhetz/gruvbox'
" Plugin 'chriskempson/base16-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'connorholyday/vim-snazzy'
Plugin 'itchyny/lightline.vim'
Plugin 'kmtoki/lightline-colorscheme-simplicity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings
set number
syntax enable
set t_Co=256
colorscheme snazzy
set background=dark
set mouse=a
set virtualedit=onemore
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set clipboard=unnamed
set autoread
au CursorHold * checktime

" fix Emmet
let g:user_emmet_leader_key='<C-Z>'

" Yep, spaces
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting

" No error noise on
" bad key-strokes, etc
set visualbell
set noerrorbells

" Change backup and swap dirs
" So these files don't appear in
" our project directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" NERDTree Stuff
" Ctrl-n for NERDTree
" Ctrl-ww to switch between NERDTree and panes
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>
let g:NERDTreeShowHidden=1
" User older-School (more font-friendly) directory
" arrows in directory listings
" Use this if set encoding utf-8 doesn't fix this issue:
" http://superuser.com/questions/401413/cant-open-folders-in-linux-nerdtree-vim
" https://github.com/scrooloose/nerdtree/issues/108
" let NERDTreeDirArrows=0

" Set leader to comma
let mapleader = ","
let g:mapleader = ","

" Save via ',w'
nmap <leader>w :w!<cr>

" Exit insert mode via 'jj'
imap jj <esc>

" CtrlP to open CtrlP
" Ctrl-T to open highlighted file in new tab

" Remove trailing spaces
" Within PHP files
autocmd BufWritePre *.php :%s/\s\+$//e

" Open composer.json file easily
" within a new tab via ',lc'
nmap <leader>lc :tabe composer.json<cr>

" Remove folding of markdown
" as per https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" Airline stuff
" set laststatus=2
" let g:airline_theme = 'dark'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

let g:lightline = {
\ 'colorscheme': 'simplicity',
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' }
\ }
set noshowmode
" Down is really the next line
nnoremap j gj
nnoremap k gk

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" Remove search results
command! H let @/=""

" Linting
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" JavaScript Stuff
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
