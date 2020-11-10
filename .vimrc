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

" Start gruvbox
autocmd vimenter * colorscheme gruvbox

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()
