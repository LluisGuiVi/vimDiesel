let mapleader =" "

" YAML indentation helper
autocmd FileType yaml setlocal ai ts=2 sw=2 et

nmap <leader>f :Files<cr>
map <leader>y :YRShow<cr>
nmap <leader>n :Vexplore<cr>

" Magic from Peris
map <leader>s :norm yiw<cr> :%s/<C-r>"//g<left><left>

" Set lines
set number relativenumber
set clipboard=unnamed " Use the system clipboard

" Remaps
imap jj <Esc>

" ------------------------------- Configure netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
let g:netrw_winsize = 50
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" TAB and spaces
filetype plugin indent on
" On pressing tab, insert 4 spaces
set expandtab
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" show special chars
" set listchars=tab:>·,trail:~,extends:>,precedes:<,space:␣
" set list

" Start gruvbox
autocmd vimenter * colorscheme gruvbox
set bg=dark

" Show indentation
set ts=2 sw=2 et
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
nnoremap qq :IndentGuidesToggle<cr>

" save all
nnoremap ss :wa<cr>

" Backup
set backup
set noswapfile
set directory=~/.vim/temp
set backupdir=~/.vim/temp
set undodir=~/.vim/temp


call plug#begin('~/.vim/plugged')
" Initialize plugin system
" Install Nerd tree
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Install gruvbox
Plug 'morhetz/gruvbox'

Plug 'vim-scripts/YankRing.vim'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive' " https://medium.com/better-programming/4-vim-plugins-to-boost-efficiency-6922add12e83

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
