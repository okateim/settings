set encoding=utf-8
set fileencodings=utf-8
set noswapfile
set nobackup
set number
set showmatch matchtime=1
set backspace=2
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set clipboard+=unnamed
set ruler
set spelllang+=cjk
set spell
set spellfile=~/.vim/spell/mydict.add
set cursorline
set vb t_vb=
set hlsearch
set incsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red
syntax on
colorscheme desert
highlight FullWidthSpace ctermbg=white guibg=white
match FullWidthSpace /　/
