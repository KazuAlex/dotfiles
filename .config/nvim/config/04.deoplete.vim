" deoplete.vim contains vim settings relevant to the deoplete autocompletion
" plugin

" deoplete options
let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
call deoplete#custom#option('enable_smart_case', 1)

" disable autocomplete by default
let b:deoplete_disable_auto_complete=1
let g:deoplete_disable_auto_complete=1

" call deoplete#custom#buffer_option('auto_complete', v:false)
" call deoplete#custom#source('LanguageClient', \ 'min_pattern_length', \ 2)

" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" set sources
call deoplete#custom#option('sources', {
        \ 'cpp': ['LanguageClient'],
        \ 'python': ['LanguageClient'],
        \ 'python3': ['LanguageClient'],
        \ 'rust': ['LanguageClient'],
        \ 'c': ['LanguageClient'],
        \ 'vim': ['vim'],
      \ })
" let g:deoplete#sources = {}
" let g:deoplete#sources.cpp = ['LanguageClient']
" let g:deoplete#sources.python = ['LanguageClient']
" let g:deoplete#sources.python3 = ['LanguageClient']
" let g:deoplete#sources.rust = ['LanguageClient']
" let g:deoplete#sources.c = ['LanguageClient']
" let g:deoplete#sources.vim = ['vim']

" ignored sources
" let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources._ = ['buffer', 'around']
call deoplete#custom#option('ignore_sources', {
        \ '_': ['buffer', 'around'],
        \ 'php': ['omni', 'phpactor'],
      \ })

"phpcd.vim
" let g:deoplete#ignore_sources.php = ['omni', 'phpactor']
let g:phpcd_disable_modifier = 0
