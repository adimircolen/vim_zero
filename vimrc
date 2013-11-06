execute pathogen#infect()

filetype plugin indent on
""
"" Basic Setup
""
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

""
"" Whitespace
""
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

"" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the
                                  " right of the screen
                                  " set listchars+=precedes:<         " The
                                  " character to show in the last column when
                                  " wrap is
                                  "                                   " off
                                  "                                   and the
                                  "                                   line
                                  "                                   continues
                                  "                                   beyond
                                  "                                   the left
                                  "                                   of the
                                  "                                   screen

""
"" Searching
""
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

"" color
colorscheme railscasts
"" NERD Tree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

