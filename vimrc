" --- setting for nerdtree
let g:NERDTreeIgnore = ['\.aux$', '\.blg$', '\.fdb_latexmk$', '\.fls$', '\.pdf$', '\.dvi$', '\.vtc$', '\.gz']
" --- setting for winresizer
let g:winresizer_vert_resize = 5
" --- setting for vimtex
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

let g:vimtex_enabled=1
let g:vimtex_view_general_viewer='/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_options = '@line @pdf @tex'
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \ 'rsfs',
      \ 'Overfull',
      \ 'Package xcolor Warning',
      \ 'Package hyperref Warning',
      \ 'Package remreset Warning',
      \ 'Missing "school"',
      \]
let g:latex_latexmk_options = '-pdf'
"if empty(v:servername) && exists('*remote_startserver')
"  call remote_startserver('VIM')
"endif
let maplocalleader = '_'
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

" --- setting for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" --- general settings
set encoding=utf-8
set fileencodings=utf-8
set noswapfile
set nobackup
set number
set showmatch matchtime=1
set backspace=2
set autoindent
set smartindent
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
hi Search ctermfg=Blue

syntax on
colorscheme slate

highlight FullWidthSpace ctermbg=white guibg=white
match FullWidthSpace /　/

autocmd BufNewFile,BufRead *.tex setlocal isk+=:
autocmd BufNewFile *.py 0r $HOME/.vim/template/python.txt
autocmd BufNewFile *.tex 0r $HOME/.vim/template/tex.txt
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp.txt
