"	          _                    
"	   _   __(_)___ ___  __________
"	  | | / / / __ `__ \/ ___/ ___/
"	 _| |/ / / / / / / / /  / /__  
"	(_)___/_/_/ /_/ /_/_/   \___/  
"	
"
"	By : Étienne Dubé <Dystopian Salmon>
"	@  : <DystopianSalmonwithTwoKnives@protonmail.com>


"  ┌─────────────────┐
"  | Basics settings |
"  └─────────────────┘

" Mapleader
let mapleader = ";"

" Vi compatibility
set nocompatible

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace
set backspace=indent,eol,start

" Tabs
set tabstop=8
set expandtab
set shiftwidth=8
set softtabstop=0 "Useless since expandtab is set

" Enable hidden buffers
set hidden

" Search
set hlsearch " Highlight search result
set incsearch " À quoi ça sert
set ignorecase
set smartcase "Only case-sensitive if capital letter

" File format (LF / CR)
set fileformats=unix,dos,mac

" Filetype
filetype plugin indent on

" Shell
set shell=$SHELL


"  ┌──────────────────┐
"  | Visuals settings |
"  └──────────────────┘

syntax on
set ruler
set number

set t_Co=256 " Max color displayable

" Number of context lines
set scrolloff=5

" Status bar
set laststatus=2

set title
set titleold="st"

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" Search results centering
nnoremap n nzzzv
nnoremap N Nzz

"  ┌───────────┐
"  | Shortcuts |
"  └───────────┘

" Quick help text-file
nnoremap <leader>h :botright vs ~/.local/share/nvim/cheatsheet.txt <Enter>

" Capitals letter fuckup proofing
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"  ┌───────────────────────┐
"  | Whitespace remover :) |
"  └───────────────────────┘

command! FixWhitespace :%s/\s\+$//e


"  ┌───────────────────────────┐
"  | Basic nav, and copye/pase |
"  └───────────────────────────┘

" Remaps the CapsLk to Esc
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" Buffers
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv


"  ┌─────────┐
"  | Plugins |
"  └─────────┘

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
let curl_exists=expand('curl')

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))
call plug#end()


