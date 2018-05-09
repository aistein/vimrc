filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Restrict cursor to leftmost non-whitespace character
augroup BossyMotions
    autocmd!
    autocmd CursorMoved <buffer> if strpart(getline('.'), 0, col('.')) =~ '^\s*$' | execute 'normal! ^' | endif
augroup END
