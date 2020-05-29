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
set encoding=UTF-8

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
call plug#end()

" Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix='0'

" Ultisnips settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" In-session settings change
map <leader>g : Goyo\| set bg=light\| set linebreak<CR>
map <leader>t : NERDTreeToggle<CR>

" Shortcuts
map <leader> :<Space><Esc>/<++><Enter>4xi

" Remaps the CapsLk to Esc
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Autocomplete
autocmd FileType tex inoremap ;é \e{'}
autocmd FileType tex inoremap ;É \E{'}
