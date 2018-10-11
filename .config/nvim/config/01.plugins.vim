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
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/neco-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('icymind/NeoSolarized')
  call dein#add('tmhedberg/SimpylFold')
  call dein#add('Konfekt/FastFold')
  call dein#add('w0rp/ale')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('neomutt/neomutt.vim')
  call dein#add('junegunn/fzf')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('alaric/neovim-visor')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('autozimu/LanguageClient-neovim', {
              \ 'rev': 'next',
              \ 'build': 'bash install.sh',
              \ })
  call dein#add('kien/ctrlp.vim')
  call dein#add('lvht/phpcd.vim', { 'build': 'composer install' })

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
