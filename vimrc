" Required by Vundle
set nocompatible
filetype off

" HelenOS
set encoding=utf-8
set fileencoding=utf-8
set tabstop=8

" Vundle config
set rtp+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'wting/rust.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'mbbill/undotree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'craigemery/vim-autotag'
Plugin 'racer-rust/vim-racer'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'majutsushi/tagbar'
Plugin 'lrvick/Conque-Shell'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on

" Main
set autoread
set wildmenu
set wildignore="*.o,*~"
set relativenumber number
set ruler
set showmatch
set laststatus=2
set statusline=\ %{fugitive#statusline()}\ %F%m%r%h\ %w%h\ \ \ Line:\ %l\ \ \ Column:\ %c
let g:NERDTreeWinSize = 35
set mouse=a

" Colors & fonts
syntax enable
set background=dark
colorscheme base16-ir-black
let base16colorspace=256
"set cc=81
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:session_autosave = 'no'
let g:session_autoload = 'no'
set t_co=256

" Tags
autocmd BufRead *.rs :setlocal tags=./tags;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWrite *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" <bar> redraw!
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_rust = {
	 \ 'ctagstype' : 'rust',
	 \ 'kinds' : [
		 \'T:types,type definitions',
		 \'f:functions,function definitions',
		 \'g:enum,enumeration names',
		 \'s:structure names',
		 \'m:modules,module names',
		 \'c:consts,static constants',
		 \'t:traits,traits',
		 \'i:impls,trait implementations',
	\]
\}
set tags=tags

" Racer
set hidden
let g:racer_cmd = "racer"
let g:racer_experimental_completer = 1
set omnifunc=syntaxcomplete#Complete

" Easymotion
map <C-f> <Plug>(easymotion-prefix)

" Search
set incsearch
set hlsearch
map <silent> <C-m> :noh<cr>
set completeopt=longest,menuone

" No error bell
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" No backup
set nobackup
set nowb
set noswapfile

" Tabs
"set expandtab
"set smarttab
"set shiftwidth=4
"set tabstop=4
"set softtabstop=4
autocmd Filetype rust setlocal ts=4 sts=4 sw=4 expandtab smarttab
autocmd Filetype cpp setlocal ts=4 sts=4 sw=4 expandtab smarttab
autocmd Filetype lua setlocal ts=4 sts=4 sw=4 expandtab smarttab
set ai
set si
set wrap

" Mapping
let mapleader=","
let g:mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <C-d> :NERDTreeToggle<cr>
nmap <C-u> :UndotreeToggle<cr>
nmap <C-h> :wincmd h<cr>
nmap <C-j> :wincmd j<cr>
nmap <C-k> :wincmd k<cr>
nmap <C-l> :wincmd l<cr>
nmap <C-Left> :wincmd h<cr>
nmap <C-Down> :wincmd j<cr>
nmap <C-Up> :wincmd k<cr>
nmap <C-Right> :wincmd l<cr>
nmap <C-i> :split<cr>
nmap <C-o> :vsplit<cr>
nmap <S-Right> :tabnext<cr>
nmap <S-Left> :tabprev<cr>
nmap <S-Up> :tabnew<cr>
nmap <silent> <S-Down> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
