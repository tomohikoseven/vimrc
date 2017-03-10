"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
"set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))
  
" neobundle自体をneobundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'
   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'Shougo/neocomplete.vim'
    
"call neobundle#end()
     
" Required:
"filetype plugin indent on
      
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck
       
"-------------------------
" End Neobundle Settings.
"-------------------------
set tabstop=2
set expandtab
set shiftwidth=2
syntax on
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
"inoremap { {}<LEFT>
"inoremap ( ( )<LEFT>
set autoindent
set incsearch
" 不可視文字を表示
"set list
" 不可視文字の表示タイプ
"set listchars=tab:>-,trail:-,extends:>,precedes:<
set tags=tags
set laststatus=2
set statusline=%f%m%=%l,%c\ %{'['.(&fenc!=''?&fenc:&enc).']\ ['.&fileformat.']'}
" カレント行の反転
set t_Co=256
set cursorline
highlight cursorline term=reverse cterm=none ctermbg=235
