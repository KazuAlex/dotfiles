" vim-polyglot
let g:polyglot_disabled = ['markdown']

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor
