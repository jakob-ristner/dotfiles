filetype off                  " required
" set the runtime path to include Vundle and initialize
"
" 
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mattn/emmet-vim' 
Plugin 'lervag/vimtex'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vincent-uden/LatexSnippets'
Plugin 'junegunn/goyo.vim'
Plugin 'miyakogi/seiya.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = " "

"Colors 
" ---------------------------------------------------
colorscheme nord
let g:haskell_conceal_wide = 1
syntax enable set display+=lastline
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
set number relativenumber

" Search tweaks
" ---------------------------------------------------
set wildmode=longest,list,full
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

" Folds
" ---------------------------------------------------
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Movement and pasting
" -----------------------------------------------------
au FileType tex nnoremap j gj
au FileType tex nnoremap k gk
au FileType text nnoremap j gj
au FileType text nnoremap k gk

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
set guifont=Roboto:h14
set linebreak

nnoremap <silent> <leader>m :noh<CR>

" Netrw, tabs and splits
" -----------------------------------------------------
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>

" Surround
nmap <leader>t ysiw
nmap <leader>b ysiW

"Replacing inside tags
nnoremap <leader>" T"ct"
nnoremap <leader>' T'ct'
nnoremap <leader>( ])c%()<Left>
nnoremap <leader>) ])c%()<Left>
nnoremap <leader>{ ]}c%{}<Left>
nnoremap <leader>} ]}c%{}<Left>
nnoremap <leader>< T<ct>
nnoremap <leader>> T<ct>

nnoremap <C-n> :NERDTreeToggle<CR>

"Macros
nnoremap <leader>q @q

"Some latex things
nnoremap <leader>e i\section{}<Left>
nnoremap <leader>w i\begin{}<Left>
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

set colorcolumn=0
let mapleader = ","

au FileType tex match

nnoremap <space><space> /<++><CR>:noh<CR>4cl

au FileType slim setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et

au FileType tex setl sw=2 sts=2 et
au FileType tex set textwidth=0
au FileType tex nnoremap <F3> :!xelatex <C-r>%<CR>
au FileType tex nnoremap <F4> :!zathura %:r.pdf --fork<CR><CR>
au FileType tex execute 'setlocal dict+=~/github/vincent/dotfiles/latex.txt'

au FileType rust nnoremap <F3> :!cargo check<CR>
au FileType rust nnoremap <F4> :!cargo run<CR>

au FileType cpp nnoremap <F3> :!make<CR>
au FileType cpp nnoremap <F4> :!make crun<CR>

au FileType hpp nnoremap <F4> :!make crun<CR>

au FileType c nnoremap <F3> :!make<CR>
au FileType c nnoremap <F4> :!make crun<CR>
au FileType c nnoremap <C-a>  I/*<Esc>A*/<Esc>

au FileType h nnoremap <F3> :!make<CR>
au FileType h nnoremap <F4> :!make crun<CR>

au FileType haskell nnoremap <F3> :!ghc -dynamic % -outputdir ./build<CR>
au FileType haskell nnoremap <F4> :!./%:r<CR>
au FileType haskell nnoremap <F10> :!ghci %<CR>

au FileType java nnoremap <F3> :!javac *.java<CR>
au FileType java nnoremap <F4> :!java %:r<CR>

au FileType sql inoremap ,nt CREATE TABLE <++>(<CR><++><CR>);<ESC>2k

let g:tex_flavor = 'tex'
let g:seiya_auto_enable=1

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set nocursorline
