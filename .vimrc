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
inoremap { {}<LEFT>
inoremap ( ( )<LEFT>
set autoindent
set incsearch
" 不可視文字を表示
set list
" 不可視文字の表示タイプ
set listchars=tab:>-,trail:-,extends:>,precedes:<
set tags=tags
set laststatus=2
set statusline=%f%m%=%l,%c\ %{'['.(&fenc!=''?&fenc:&enc).']\ ['.&fileformat.']'}
" カレント行の反転
set t_Co=256
set cursorline
highlight cursorline term=reverse cterm=none ctermbg=235
