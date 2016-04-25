let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

call plug#begin()
" Default config from tpope.
" TODO: Check the introduced changes by this plugin
Plug 'tpope/vim-sensible'

" Next are some themes that must be checked
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'

" Plugin for neovim-gui options
Plug 'equalsraf/neovim-gui-shim'

" Nice status bar
Plug 'vim-airline/vim-airline'

" Use font icons for several plugins
" Plug 'ryanoasis/vim-devicons'

call plug#end()

" Color scheme options

let g:gruvbox_bold=0

syntax enable
set background=dark

colorscheme gruvbox

let g:GuiFont='Anonymice Powerline:h12'
GuiFont g:GuiFont

let g:airline_powerline_fonts=1
