if empty(glob($HOME.'/.config/nvim/.cache/'))
  " creating directories...
  silent !mkdir -p $HOME/.config/nvim/.cache/dein
  " downloading dein...
  silent !curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  " dein installation...
  silent !sh ./installer.sh $HOME/.config/nvim/.cache/dein

  silent autocmd VimEnter * UpdateRemotePlugins | source $HOME/.config/nvim/init.vim
endif

" Required:
set runtimepath+=$HOME/.config/nvim/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME.'/.config/nvim/.cache/dein')
  call dein#begin($HOME.'/.config/nvim/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add($HOME.'/.config/nvim/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:

  " snippet
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " language pack
  call dein#add('sheerun/vim-polyglot')

  " file explorer
  call dein#add('scrooloose/nerdtree')

  " folding
  call dein#add('Konfekt/FastFold')

  " linter
  call dein#add('w0rp/ale')

  " color
  call dein#add('vim-scripts/colorizer')

  " ??
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('neomutt/neomutt.vim')
  call dein#add('junegunn/fzf')

  " terminal in neovim : <C-a>
  call dein#add('alaric/neovim-visor')

  " tmux
  call dein#add('christoomey/vim-tmux-navigator')

  " schema
  call dein#add('w0ng/vim-hybrid')
  call dein#add('icymind/NeoSolarized')

  " airline theme
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('powerline/powerline')

  " autocompletion
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/vimshell')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('autozimu/LanguageClient-neovim', {
              \ 'rev': 'next',
              \ 'build': 'bash install.sh',
              \ })
  call dein#add('kristijanhusak/deoplete-phpactor') " autocomplete for phpactor/deoplete

  " php
  " call dein#add('lvht/phpcd.vim', { 'build': 'composer install' })
  call dein#add('phpactor/phpactor', {'for': 'php', 'do': 'composer install'})

  " tag
  call dein#add('majutsushi/tagbar')

  " fuzzy search file
  call dein#add('kien/ctrlp.vim')

  " comment with <g-c-c>
  call dein#add('tpope/vim-commentary')
  
  " automatic closing quotes, parentheses, brackets, etc
  call dein#add('Raimondi/delimitMate')

  " create table
  call dein#add('dhruvasagar/vim-table-mode')

  " plugins for git
  call dein#add('tpope/vim-fugitive')
  call dein#add('jreybert/vimagit')

  " sudo stuff
  call dein#add('lambdalisue/suda.vim')

  " surround
  call dein#add('tpope/vim-surround')

  " typescript
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})

  " editorconfig
  call dein#add('editorconfig/editorconfig-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
