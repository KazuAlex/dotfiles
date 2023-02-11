""""""""""""
""" VIM Wiki
""""""""""""

" use markdown instead of VimWiki syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Markdown preview
let g:mkdp_preview_options = {
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'content_editable': v:false,
    \ }

