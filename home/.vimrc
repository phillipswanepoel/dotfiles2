" Formatting
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Line numbers
set number
set cursorline
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=yellow cterm=NONE
highlight CursorLine cterm=NONE gui=NONE ctermbg=NONE guibg=NONE
set relativenumber 

" Syntax
syntax on
filetype on
filetype plugin on
filetype indent on

" Remapping 
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap o o<esc>
nnoremap n nzz

" Font and stuff
set guifont=JetBrains\ Mono\ Nerd\ Font:h11
set nobackup
set scrolloff=10
set nowrap
set ignorecase
set smartcase

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
