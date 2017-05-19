set number
" display numbers

syntax enable
" enable pretty colors

let base16colorspace=256  
" Access colors present in 256 colorspace

colorscheme base16-default-dark

set mouse=a
" give mouse to all views

set ruler
" show where I am

set colorcolumn=81
" vertical line at 81 chars

set autoindent
" autoindent lines for code

" set smartindent
" let this thing be smart


set tabstop=2
" visual spaces per tab

set shiftwidth=2
" look up what this does

set softtabstop=2
" number of spaces in tab when editing

let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab
  " tabs are not spaces
else
  set expandtab
  " tabs are spaces
endif

set showcmd
" show commands

set cursorline
" highlight current line

set wildmenu
"visual autocomplete for command menu

set showmatch
" highlight match [{()}]

set incsearch
" search as characters are entered

ab jack money
ab Jack Money
" enable better abbreviations

set hlsearch
" highlight matches

set foldenable
" enable folding

set foldlevelstart=10
" open most folds by default

set foldnestmax=10
" 10 nested folds max

set foldmethod=indent
" fold based on indent

nnoremap j gj
nnoremap k gk
" move vertically by visual line

inoremap jk <esc>
" map esc to jk

set relativenumber
" relative number stuff

set ignorecase
" ignores case while searching

set smartcase
" if the case is in the pattern, it will only search for that pattern

set wrapscan
" wrap around while searching

nnoremap <backspace> :noh<CR>:<backspace>
" turn off highlighting with backspace

" set textwidth=80
" stop at 80 characters and move to next line

let &colorcolumn=join(range(81,999),",")
" extend end to end of screen

highlight ColorColumn ctermbg=18 guibg=#e0e0e0
" set colorcolumn color to some gray thing

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" easier navigation between splits

set splitbelow
set splitright
" more natural split panes

set list
set listchars=tab:\|\ ,trail:·
" show tabs
