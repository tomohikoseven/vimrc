set tabstop=4
set expandtab
set tags=tags
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set showmatch
set whichwrap=b,s,<,>,[,]
