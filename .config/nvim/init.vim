set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=nicr
set mouse=a
set showcmd 
set encoding=UTF-8

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tc50cal/vim-terminal'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim'
Plug 'mhinz/vim-startify'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "palenight"

colorscheme palenight
syntax on
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F6> :terminal<CR>

