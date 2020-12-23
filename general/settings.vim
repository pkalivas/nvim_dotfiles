

set noshowmode          " remove the basic insert tag at the bottom of the window
set number
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " number of spaces to use for autoindent
set expandtab           " tabs are space
set autoindent
set hidden
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching brace
set laststatus=2        " window will always have a status line
set mouse=a
set splitbelow
set splitright
set relativenumber
set nobackup
set nowritebackup
set updatetime=100
set timeoutlen=150
set nowrap
set incsearch           " search as characters are entered
set nohlsearch            " highlight matche
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is lower case
set cmdheight=2         " distance popups come up from
set shortmess+=c        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
cmap w!! w !sudo tee %
