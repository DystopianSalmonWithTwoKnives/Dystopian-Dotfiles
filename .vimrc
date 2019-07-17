"	          _                    
"	   _   __(_)___ ___  __________
"	  | | / / / __ `__ \/ ___/ ___/
"	 _| |/ / / / / / / / /  / /__  
"	(_)___/_/_/ /_/ /_/_/   \___/  
"	
"
"	By : Étienne Dubé <Dystopian Salmon>
"	@  : <DystopianSalmonwithTwoKnives@protonmail.com>

" Mapleader setting
let mapleader = ";"

" Basics setting
syntax on
set encoding=utf-8
set number relativenumber
set splitbelow splitright
set tabstop=4
set shiftwidth=4
set expandtab
set bg=dark
filetype plugin on
set nocompatible

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" In-session settings change
map <leader>g : Goyo\| set bg=light\| set linebreak<CR>
map <leader>t : NERDTreeToggle<CR>

" Shortcuts
map <leader> :<Space><Esc>/<++><Enter>4xi

" Autocomplete
autocmd FileType tex inoremap ;é \e{'}
autocmd FileType tex inoremap ;É \E{'}
