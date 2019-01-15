" Delete trailing whitespace with F5
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
nmap <C-t> :NERDTreeToggle<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" keybindings for language client
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" ALE
nmap <F8> <Plug>(ale_fix)

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Expands or completes the selected snippet/item in the popup menu
imap <expr><silent><CR> pumvisible() ? deoplete#mappings#close_popup() .
      \ "\<Plug>(neosnippet_jump_or_expand)" : "\<CR>"
smap <silent><CR> <Plug>(neosnippet_jump_or_expand)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" neovim visor
let g:neovim_visor_key = '<C-a>'

" change working directory to where the file in the buffer is located
" if user types `,cd`
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

" Easy most-recent-buffer switching
nnoremap <Tab> :buffers<CR>:buffer<Space>

inoremap <C-s> <Esc> :w <CR>
nmap <S-Tab> :bprevious <CR>
nmap <Tab> :bnext <CR>
nmap <C-s> <Esc> :w <CR>
vmap <Tab> >gv
vmap <S-Tab> <gv

" remap for french keyboard
noremap m l
noremap l k
noremap k j
noremap j h

" move line to 1/4 of screen
nnoremap <expr> ZT 'zz' . winheight(0)/4 . '<C-e>'



" phpactor
" Include use statement
nmap <Esc>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
nmap <Esc>mm :call phpactor#ContextMenu()<CR>
" Invoke the navigation menu
nmap <Esc>nn :call phpactor#Navigate()<CR>
" Goto definition of class or class member under the cursor
nmap <Esc>o :call phpactor#GotoDefinition()<CR>
" Show brief information about the symbol under the cursor
nmap <Esc>K :call phpactor#Hover()<CR>
" Transform the classes in the current file
nmap <Esc>tt :call phpactor#Transform()<CR>
" Generate a new class (replacing the current file)
nmap <Esc>cc :call phpactor#ClassNew()<CR>
" Extract expression (normal mode)
nmap <silent><Esc>ee :call phpactor#ExtractExpression(v:false)<CR>
" Extract expression from selection
vmap <silent><Esc>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
" Extract method from selection
vmap <silent><Esc>em :<C-U>call phpactor#ExtractMethod()<CR>
