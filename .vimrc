" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

set hidden
" Better command-line completion
set wildmenu
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches 
set hlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
" Always display the status line, even if only one window is displayed
set laststatus=2
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
" Use visual bell instead of beeping when doing something wrong
set visualbell
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif
" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2
" Display line numbers on the left
set number
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Enable VIM Plugin Manager
call plug#begin()
Plug 'preservim/NERDTree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kaicataldo/material.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'tmsvg/pear-tree'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
" Initialize plugin system 
call plug#end()

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

if(has('termguicolors'))
  set termguicolors
endif

let g:material_theme_style = 'darker'
colorscheme material

" Set space as map leader
nnoremap <SPACE> <Nop>
let g:mapleader = "\<Space>"

" Set update time to 100ms, which will update plugins such as gitgutter faster
set updatetime=100

" Use system clipboard
set clipboard=unnamedplus

" NERDTree Configuration
nmap <Leader>f :NERDTreeToggle<cr>
let g:NERDTreeShowHidden=1

" PearTree Configuration
let g:pear_tree_pairs = {
      \ '(': {'closer': ')'},
      \ '[': {'closer': ']'},
      \ '{': {'closer': '}'},
      \ "'": {'closer': "'"},
      \ '"': {'closer': '"'},
      \ '/*': {'closer': '*/'},
      \ '`': { 'closer': '`'}
      \ }
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_backspace = 1
let g:pear_tree_smart_closers = 1

" Ale Configuration
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint']
      \}
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint']
      \ }
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_javascript_eslint_options = '--rule "quotes: [2, single]"'
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'

" Lightline.vim Configuration
" Get rid of mode information
set noshowmode

" Show suggestions in popup, rather than in preview 
set completeopt=menu,popup
" Close popup after completion
let g:ycm_autoclose_preview_window_after_completion = 1
"------------------------------------------------------------
