set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim' 
Plugin 'neovimhaskell/haskell-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'miyakogi/seiya.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'slim-template/vim-slim'
Plugin 'junegunn/goyo.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'
Plugin 'vincent-uden/LatexSnippets'
Plugin 'rust-lang/rust.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colors 
" ---------------------------------------------------
colorscheme gruvbox
highlight EndOfBuffer ctermfg=black
set background=dark
syntax enable
set display+=lastline

" Tabs, indentation and numbers
" ---------------------------------------------------
set tabstop=4
set splitbelow
set splitright
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on

" Search tweaks
" ---------------------------------------------------
set wildmode=longest,list,full
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
nnoremap M :noh<CR>

" Folds
" ---------------------------------------------------
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Movement and pasting
" -----------------------------------------------------
nnoremap j gj
nnoremap k gk
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <S-Insert> i<S-Insert><Esc>

" File encoding and gvim options for windows
" -----------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set autoindent
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set belloff=all
set guifont=Consolas:h14
set linebreak

" Nerdtree, tabs and splits
" -----------------------------------------------------
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-t> :tabnew<CR>
map <F8> :vertical resize -5<CR>
map <F9> :vertical resize +5<CR>

" Toggle dark/light background
" -----------------------------------------------------
map <F1> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Markdown syntax recognition
" -----------------------------------------------------
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown', '.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Language
" -----------------------------------------------------
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F5> :setlocal spell! spelllang=sv<CR>
inoremap ¤aa å
inoremap ¤ae ä
inoremap ¤oe ö
inoremap ¤AA Å
inoremap ¤AE Ä
inoremap ¤OE Ö
let g:user_emmet_leader_key = "<C-F>"
inoremap <C-c> <Esc>
let g:seiya_auto_enable=0
"set colorcolumn=81
let mapleader = ","

nnoremap <space><space> /<++><CR>:noh<CR>4cl

au FileType slim setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et
au FileType tex setl sw=2 sts=2 et
au FileType tex set textwidth=80
au FileType tex nnoremap <F3> :!pdflatex <C-r>%<CR>
au FileType tex nnoremap <F4> :!zathura %:r.pdf --fork<CR><CR>
au FileType nroff nnoremap <F3> :!groff -ms -T pdf -k % > %:r.pdf<CR>
au FileType nroff nnoremap <F4> :!zathura %:r.pdf --fork<CR><CR>
au FileType cpp nnoremap <F3> :!make<CR>
au FileType cpp nnoremap <F4> :!make crun<CR>
au FileType hpp nnoremap <F3> :!make<CR>
au FileType hpp nnoremap <F4> :!make crun<CR>
au FileType c nnoremap <F3> :!make<CR>
au FileType c nnoremap <F4> :!make crun<CR>
au FileType h nnoremap <F3> :!make<CR>
au FileType h nnoremap <F4> :!make crun<CR>
au FileType rust nnoremap <F3> :!cargo check<CR>
au FileType rust nnoremap <F4> :!cargo run<CR>
au FileType haskell nnoremap <F3> :!ghc -dynamic % -outputdir ./build<CR>
au FileType haskell nnoremap <F4> :!./%:r<CR>

nnoremap <F2> :set rnu! <CR>

nnoremap <C-i> dd2kp
nnoremap <C-b> ddp

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:tex_flavor = 'tex'
let g:seiya_auto_enable=1

set nocursorline
