set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

filetype off                  " required

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plug 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/desertEx'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'xml'] }
Plug 'kien/ctrlp.vim'
Plug 'statianzo/vim-jade'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/syntastic'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'powerline/powerline'
Plug 'jreybert/vimagit'
Plug 'vim-scripts/colorizer'
Plug 'vim-scripts/nextval'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'jwalton512/vim-blade', { 'for': 'blade' }
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sqlcomplete.vim'

" if (v:version > 703 || v:version == 703 && has('patch598')) && has('python')
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.sh', 'for': ['c', 'cpp', 'python'] }
" endif

Plug 'Raimondi/delimitMate'
Plug 'edsono/vim-matchit'

call plug#end()            " required

syntax on

set noswapfile

set t_Co=256

" auto completion
set wildmenu
set wildmode=longest:full,full

syntax enable
set foldenable
let php_folding=1
set foldmethod=indent
set foldlevel=1
set foldlevelstart=1

" ctrlp ignore files matched by .gitignore if any
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
nnoremap <Leader>P :let ctrlp_user_command = []<CR>:CtrlPClearCache<CR>:CtrlP<CR>:let ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']<CR>:CtrlPClearCache<CR>

let g:hybrid_use_Xresources = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark


" set color scheme
colorscheme molokai

let g:airline_powerline_fonts = 1
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'




" php check syntax before save
set statusline=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



autocmd FileType php setlocal commentstring=//\ %s



inoremap <C-s> <Esc> :w <CR>
nmap <S-Tab> :bprevious <CR>
nmap <Tab> :bNext <CR>
nmap <C-s> <Esc> :w <CR>
nmap <C-x> <Esc> :x <CR>
imap <C-x> <Esc> :x <CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-a> :bnext<CR>
vmap <Tab> >gv
vmap <S-Tab> <gv
noremap m l
noremap l k
noremap k j
noremap j h
" move line to 1/4 of screen
nnoremap <expr> ZT 'zz' . winheight(0)/4 . '<C-e>'
" let at least 3 lines above and below the cursor
set scrolloff=3

set laststatus=2
set ignorecase
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set noswapfile
set hlsearch

" auto source vimrc when save it
augroup GroupVimrc
  autocmd!
  autocmd BufWritePost .vimrc so ~/.vimrc 
augroup END
" end auto source

set runtimepath^=~/.vim/bundle/ctrlp.vim


" All of your Plugins must be added before the following line
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
