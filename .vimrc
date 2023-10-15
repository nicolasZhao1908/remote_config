" Remote compatible
set encoding=utf-8
set signcolumn=no
set backspace=indent,eol,start
set guicursor=
set mouse=
set showmode
set showcmd
set relativenumber
set incsearch
set hlsearch
syntax on

set history=50
set nowrap

set sidescrolloff=8
set scrolloff=8

set smartindent
set autoindent
" set noexpandtab for tab instead of tab
set expandtab
set shiftwidth=4
set tabstop=4

set ignorecase
set smartcase

set noswapfile
set nobackup

if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "", 0700)
endif

set undodir=~/.vim/undodir
set undofile

set updatetime=50
set colorcolumn=80

set mouse=
set completeopt=menuone,noselect
set clipboard^=unnamed,unnamedplus

noremap <Space> <Nop>
let g:mapleader = ' '

noremap ' `
vnoremap <Leader>p "_dP
vnoremap <Leader>d "_d
nnoremap <Leader>d "_d

nnoremap <Leader>nh :nohlsearch<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Completion settings

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,preview,noinsert
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_localcopydircmd = 'cp -r'
nnoremap <C-b> :Lex<CR>

set wildmenu
set wildmode=longest:full,full
