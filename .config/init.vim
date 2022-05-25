" This is just supposed to be a very lightweight neovim config, nothing too
" fancy like an IDE or anything similar. Just meant for quick and dirty
" editing on the terminal or some light coding


:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tc50cal/vim-terminal'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim'

set encoding=UTF-8

call plug#end()

let g:airline_powerline_fonts = 1

:colorscheme onehalfdark

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F6> :TerminalSplit zsh<CR>
