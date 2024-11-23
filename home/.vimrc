set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap o o<esc>
nnoremap n nzz
set guifont=JetBrains\ Mono\ Nerd\ Font:h11
filetype on
filetype plugin on
filetype indent on
set nobackup
set scrolloff=10
set nowrap
set autoindent

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
