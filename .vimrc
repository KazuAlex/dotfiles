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
" Plug 'L9' " problem install
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'xml'] }
Plug 'kien/ctrlp.vim'
Plug 'statianzo/vim-jade'
" Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'scrooloose/syntastic'
Plug 'palantir/tslint', { 'for': ['ts', 'tsx'] }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'powerline/powerline'
Plug 'jreybert/vimagit'
Plug 'vim-scripts/colorizer'
Plug 'easymotion/vim-easymotion'
Plug 'jwalton512/vim-blade', { 'for': 'blade' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/denite.nvim' " it's not working with Plug ?

" if (v:version > 703 || v:version == 703 && has('patch598')) && has('python')
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.sh', 'for': ['c', 'cpp', 'python'] }
" endif

Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/matchit'

Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
" Plug 'plasticboy/vim-markdown'

Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
" Plug 'm2mdas/phpcomplete-extended'


" Markdown
Plug 'mzlogin/vim-markdown-toc'
let g:vmt_auto_update_on_save = 0


" php use / namespace
Plug 'arnaud-lb/vim-php-namespace'
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>r <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>r :call PhpInsertUse()<CR>
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
 noremap <Leader>e :call PhpExpandClass()<CR>
set tags=./tags;~/Projects


" Symfony
" Plug 'docteurklein/vim-symfony'
" let g:symfony_app_console_caller= "php"
" let g:symfony_app_console_path= "bin/console"
" map <C-c> :execute ":!"g:symfony_enable_shell_cmd<CR>
" Plug 'm2mdas/phpcomplete-extended'
" Plug 'm2mdas/phpcomplete-extended-symfony'

" autocomplete plugin
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
" Plug 'ervandew/supertab'
" " config for work with phpcomplete-extended
" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" configure phpcomplete-extended
let g:phpcomplete_index_composer_command="php composer.phar"
let g:phpcomplete_extended_auto_add_use=1
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']


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
let g:ctrlp_max_height = 100

let g:hybrid_use_Xresources = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark


" set color scheme
colorscheme molokai

" 80 cols hightlight
set colorcolumn=80

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
" tslint
let g:syntastic_typescript_checkers = ['tslint'] 
let g:syntastic_typescript_tslint_args = "--config ~/.config/tslint.json"



autocmd FileType php setlocal commentstring=//\ %s


let mapleader = "\<Esc>"

" smart tab completion shougo neocomplete
inoremap <expr><Tab>        pumvisible() ? "\<C-n>" : "\<Tab>"

inoremap <C-s> <Esc> :w <CR>
nmap <S-Tab> :bNext <CR>
nmap <Tab> :bprevious <CR>
nmap <C-s> <Esc> :w <CR>
" nmap <C-x> <Esc> :x <CR>
" imap <C-x> <Esc> :x <CR>
nmap <C-t> :NERDTreeToggle<CR>
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
set shiftwidth=4
set tabstop=4
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

" :%!python -m json.tool ## format json
command! Jsonpretty execute ":%!python -m json.tool"
command! Jsonmini execute ":%!ppjson -fui %"
