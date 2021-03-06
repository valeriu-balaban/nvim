let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

call plug#begin()
" tpope plugins selection
" TODO: Check the introduced changes by this plugin
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'

" Next are some themes that must be checked
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'

" Plugin for neovim-gui options
Plug 'equalsraf/neovim-gui-shim'

" Nice status bar
Plug 'vim-airline/vim-airline'

" Use font icons for several plugins
Plug 'ryanoasis/vim-devicons'

" File explorer
Plug 'scrooloose/nerdtree'

" Git changes to the file
Plug 'airblade/vim-gitgutter'

call plug#end()

" Color scheme options

let g:gruvbox_bold=0

syntax enable
set background=dark

colorscheme gruvbox

let g:airline_powerline_fonts=1

map <C-n> :NERDTreeToggle<CR>

" Configs from http://nerditya.com/code/guide-to-neovim/

" Map the leader key to SPACE
let mapleader="\<SPACE>"

set showmatch           " Show matching brackets.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering. some space
nnoremap <leader>r :call NumberToggle()<cr>

" Add command to for Y to do the same as D, to yank to the end of line

" if !exists('g:airline_symbols')
  " let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
