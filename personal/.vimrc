set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/vimcompletesme'
Plug 'dense-analysis/ale'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent off    " required


""" Global Settings
let mapleader = " "         " Change leader key to space
set rtp+=/usr/local/opt/fzf " Set fzf for search
set mouse=a                 " give mouse to all views
set ruler                   " show where I am
set colorcolumn=81          " vertical line at 80 chars
set autoindent              " autoindent lines for code
set smartindent             " let this thing be smart
set tabstop=4               " visual spaces per tab
set shiftwidth=4            " look up what this does
set softtabstop=4           " number of spaces in tab when editing
set showcmd                 " show commands
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set showmatch               " highlight match [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set foldenable              " enable folding
set foldlevelstart=5        " open most folds by default
set foldnestmax=5           " 10 nested folds max
set foldmethod=indent       " fold based on indent
set number                  " display numbers
set relativenumber          " relative number stuff
set ignorecase              " ignores case while searching
set smartcase               " case sensitive if case included
set wrapscan                " wrap around while searching
set splitright              " more natural split panes
set splitbelow
" turn off highlighting with backspace
nnoremap <backspace> :noh<CR>:<backspace>
" set colorcolumn color to some gray thing
highlight ColorColumn guibg=gray
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" map esc to jk
inoremap jk <esc>
" Use for fzf searching
nnoremap <silent> <Leader><Space> :Files<CR>
vnoremap <silent> <Leader>ss :sort<CR>
vnoremap <silent> <Leader>sn :sort n<CR>
vnoremap <silent> <Leader>sr :%sort!<CR>
vnoremap <silent> <Leader>sd :%sort u<CR>
" easier navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""" Syntax highlighting
syntax enable               " enable pretty colors
let base16colorspace=256    " Access colors present in 256 colorspace
colorscheme gruvbox
let g:colors_name='gruvbox'
set background=dark
" let g:gruvbox_contrast_dark="soft" " Makes softer gruvbox
let g:gruvbox_termcolors=16 " Set colors


""" Syntax errors
let g:syntastic_always_populate_loc_list=1  " Error check on launch
let g:syntastic_error_symbol="✗"            " Change error symbol
let g:syntastic_warning_symbol="!"          " Change warning symbol
let g:ale_sign_error='✗'
let g:ale_sign_warning='!'
let g:ale_sign_highlight_linenrs=1
" Show errors
" nnoremap <silent> <Leader>e :Errors<CR>
nnoremap <silent> <Leader>ee :lopen<CR>
nnoremap <silent> <Leader>en :lnext<CR>
nnoremap <silent> <Leader>ep :lprev<CR>
nnoremap <silent> <Leader>ec :lclose<CR>


""" Netrw settings
" let g:netrw_banner = 0 " No banner
let g:netrw_liststyle = 1
let g:netrw_browse_split = 4

""" Nerdtree
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
nnoremap <leader>no :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>


""" Undo Tree
set undodir=~/.vim/undodir
set undofile


""" Ripgrep
if executable('rg')
  let g:rg_derive_root='true'
  let g:rg_highlight='true'
  nnoremap <leader>ps :Rg<SPACE>
  nnoremap <leader>pp :Rg<CR>
endif


""" Github
" Open file in Github
vnoremap <silent> <Leader>g :Gbrowse<CR>


""" File type specific settings
" Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab                 " tabs are not spaces
else
  set expandtab                   " tabs are spaces
endif


" show tabs
set list
set listchars=tab:\|\ ,trail:·


" Ctags
" generate ctags on save
au BufWritePost *.go,*.py,*.c,*.cpp,*.h silent! !ctags -R --python-kinds=-i &
au BufWritePost *jsx,*.css silent! !ctags -R --exclude=node_modules

" shortcuts
" goto under cursor
nnoremap <leader>g <C-]>

" goto under cursor hsplit
nnoremap <leader>sg <C-w>]

" goto under cursor vsplit
" nnoremap <leader>gv <C-w>v<C-]>

" goto under cursor preview
" nnoremap <leader>gp <C-w>}

" goto under cursor preview
" nnoremap <leader>gz <C-w>z

" tselect under cursor
nnoremap <leader>t :Tags<CR>

" Tabs
" new tab
nnoremap <silent> <C-t> :tabnew<CR>

" Set true gruvbox
" colors gruvbox
