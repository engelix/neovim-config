set background=dark "apply the color set for dark screens
set clipboard=unnamedplus "enables the clipboard between Vim/Neovim and other applications
set completeopt=noinsert,menuone,noselect "modifies the auto-complete menu to behave more like an IDE
set ignorecase "case insensitive
set hlsearch "highlight search
set incsearch "incremental search
set showmatch "show matching
set cursorline "highlights the current line in the editor
set hidden "hide unused buffers
set inccommand=split "show replacements in a split screen, before applying to the file
set encoding=utf-8
set title "show the file title
set ttimeoutlen=0 "time in milliseconds to run commands
set wildmenu "shows a more advanced menu for auto-complection suggestions
set noswapfile "disable creating swap file
set scrolloff=7
set autoindent "indent a new line the same amount as the line just typed
set fileformat=unix
set spell "enable spell check (may need to download language package)
set ttyfast "speed up scrolling in Vim
set clipboard=unnamedplus "using system clipboard
filetype plugin indent on "allow auto-indenting depending on file type
set cc=80 "set an 80 column border for good coding style

"mouse settings
set mouse=a "enable mouse click
set mouse=v "middle-click paste with

"open new split panes to right and below
set splitbelow
set splitright

"numbers
set number "shows line numbers
set relativenumber "show line numbers starting from the current one

"tabs
set tabstop=4 "number of spaces for tabs
set softtabstop=4 "see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4 "number of spaces for indentation
set expandtab "transforms tabs into spaces

"syntax
filetype plugin indent on      "add automatic syntax support for open files
syntax on "add automatic syntax support for open files

"color support
set t_Co=256 "enable 256 colors on the terminal


call plug#begin('~/.vim/plugged')
    "appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    
    "color schemas
    Plug 'morhetz/gruvbox' 
    Plug 'elvessousa/sobrio'
    Plug 'sickill/vim-monokai'
    Plug 'dracula/vim'

    "utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'    
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    
    "completion / linters / formatters
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'
    Plug 'preservim/tagbar'

    "git
    Plug 'airblade/vim-gitgutter' 
    
    "for JS/JSX
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

call plug#end()


"active color scheme
colorscheme gruvbox

"airline theme
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"show hidden files by default
let NERDTreeShowHidden=1
if (has('termguicolors'))
  set termguicolors
endif

inoremap jk <esc>

"turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

"navigation keymaps
nnoremap <C-n> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>

"move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

"move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"turn nerdtree keybinds
"nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <F1> :NERDTree<CR>
nnoremap <F2> :NERDTreeToggle<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

