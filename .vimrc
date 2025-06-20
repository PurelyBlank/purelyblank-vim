" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Make scrolling faster
set ttyfast
set ttyscroll=3

 " PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" Plug 'dense-analysis/ale'
call plug#begin('~/.vim/plugged')

    Plug 'preservim/nerdtree'

    Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

    Plug 'itchyny/lightline.vim'

    Plug 'psliwka/vim-smoothie'

call plug#end()

" }}}

" Set ale c++ version
" let g:ale_cpp_cc_options = '-std=c++23 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Wpedantic -Wshadow'
" Set ale linter
" let g:ale_linters = {'c': ['clang'], 'cpp': ['clang', 'g++']}

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
" Custom Command for NERDTree
command! NTT :NERDTreeToggle

" Map Ctrl+n to the custom :NTT command
nnoremap <C-n> :NTT<CR>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

    " Enable lightline
    "call lightline#enable()

" }}}

" Set lightline
set laststatus=2
let g:lightline = { 'colorscheme' : 'nightfly' }

" Set cursor color
let g:nightflyCursorColor = v:true

" Set italics
let g:nightflyItalics = v:false

" Set colorscheme
colorscheme nightfly
