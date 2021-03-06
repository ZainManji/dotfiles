"++++++++++++++++++
"++ Essentials ++++
"++++++++++++++++++

"Terminal and VIM compatibility
set nocompatible
set t_Co=256

"Syntax highlighting
syntax on
syntax enable
filetype plugin indent on

"Who doesn't want line numbers?
set number

"Spell checking
"zg to add to dictionary
"z= for suggestions
set spell spelllang=en_us


"++++++++++++++++
"++ Mappings ++++
"++++++++++++++++

"Default explorer will behave more like NERDTree
let g:netrw_liststyle=3 " Use tree-mode as default view

" jj can be type faster than <Esc>
imap jj <Esc>

map <leader>o :MRU<CR>

"Easy window moves
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Easy 'big' moves
map J 10j
map K 10k
map L 10l
map H 10h

"Window switching: ctrl+[hjkl]
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-Q> <C-W>q

"Sick tab
map = gt
map - gT

"Move around more like a normal editor
nnoremap j gj
nnoremap k gk

".vimrc auto source
nnoremap <Leader>sv :so $MYVIMRC<CR>

"shortcut to edit .vimrc and .bash_profile
noremap <Leader>v :tabe ~/.vimrc<CR>
noremap <Leader>V :tabe ~/.bashrc<CR>


"++++++++++++++
"++ Visual ++++
"++++++++++++++

"Solarized color scheme (https://github.com/altercation/vim-colors-solarized)
let g:solarized_termcolors=256
let g:solarized_visibility = "low" "Could be low, normal or high
let g:solarized_contrast = "high"
set background=dark

"colorscheme ron "In case we're out of Solarized some day

" This shows what you are typing as a command. Awesome.
set showcmd

"Highlight lines if they're over 80 chars. New way. (VIM > 7.2)
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=8
  set colorcolumn=80
endif

"Highlight lines if they're over 80 chars. Old way.
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Show the cursor position all the time
set ruler

"Show title in title bar
set title

"Highlight the current line
set cursorline

"display invisible chars
set list
set listchars=tab:⇥·,trail:·

"Trailing spaces in red
match Error /\v\s+$/

" Show (partial) command in status line.
set showcmd


"++++++++++++
"++ Code ++++
"++++++++++++

" This being the 21st century, I use Unicode
set encoding=utf-8
set fileencoding=utf-8

" Show matching brackets.
set showmatch

" always set autoindenting on
set ai

" Don't wrap words by default
set textwidth=0

"Filetype adjustments
autocmd BufEnter *.md setlocal filetype=markdown
autocmd BufEnter *.css.tmpl setlocal filetype=css
autocmd BufEnter *.js.tmpl setlocal filetype=javascript


"++++++++++++++
"++ Search ++++
"++++++++++++++

" Case insensitive matching
set ignorecase

" Case sensitive matching if caps in search string
set smartcase

" Search on steroids
set hlsearch
set incsearch

" Use BASH style completion
set wildmenu
set wildmode=list:longest,full


"++++++++++++++++++++
"++ Indentation! ++++
"++++++++++++++++++++

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4


"+++++++++++++
"++ Misc. ++++
"+++++++++++++

"MRU awesomeness
let MRU_Max_Entries = 1000

"Keep 100,000 lines of command line history. You cannot have enough.
set history=100000

"Save the Marks. All of them.
set viminfo='1000,f1

"Default split opening position shall be to the right and below
set splitright
set splitbelow

"Auto-reload files, if there's no conflict
set autoread

"Do not keep buffer after tab closed
set nohidden

"no intro message, no swap-file message
set shortmess+=IA

" leave more context around cursor
set scrolloff=3

set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

"Code folding. za
"set foldmethod=indent
"set foldlevel=99

"Manual folds, backed up and restored
set foldmethod=manual
