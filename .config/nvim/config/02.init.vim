" init.vim contains all of the initialization plugins for vim
" note that this has to be sourced second since dein needs to
" run its scripts first. This contains misc startup settings
" for vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Enable syntax highlighting
syntax on

" Fixes backspace
set backspace=indent,eol,start

" Enable line numbers
set nu

" Enable line/column info at bottom
set ruler
set cursorline " highlights current line

" column limit
set colorcolumn=80

set laststatus=2

set scrolloff=3

" search
set ignorecase
set hlsearch

" swapfile
set noswapfile

" Autoindentation
set ai
set smartindent
filetype indent plugin on

" Copies using system clipboard
" set clipboard+=unnamedplus

" Tab = 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2
set sta
set et
set sts=2

" enable mouse support
set mouse=

" markdown file recognition
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" use ripgreg instead of grep
set grepprg=rg\ --vimgrep

" python packages in venv
let g:python_host_prog = '/home/linuxbrew/.linuxbrew/bin/python'
let g:python3_host_prog = '/home/linuxbrew/.linuxbrew/bin/python3'

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" crontab filetype tweak (the way vim normally saves files confuses crontab
" so this workaround allows for editing
au FileType crontab setlocal bkc=yes

set hidden

" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" terminal settings
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" ctrlp ignore files matched by .gitignore if any
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'dist']
nnoremap <Leader>P :let ctrlp_user_command = []<CR>:CtrlPClearCache<CR>:CtrlP<CR>:let ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'dist']<CR>:CtrlPClearCache<CR>
let g:ctrlp_max_height = 100

" folding
set foldenable
let php_folding=1
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
set foldmethod=indent
set foldlevel=1
set foldlevelstart=1


" custom commands
command Prettyjson :%!python -m json.tool
