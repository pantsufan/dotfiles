" Genral UI settings
set number             " Enables the line numbers.
set ruler              " Enables the ruler on the bottom of the screen.
set laststatus=2       " Always show the statusline.
set showmatch          " Shows matching brackets when text indicator is over them.
set scrolloff=2        " Show the given number lines of context around the cursor.
set lazyredraw         " The screen won't be redrawn unless actions took place.
set scrolljump=0       " Jump only one line on scroll.
set showcmd            " Displays the selection size and the partion commands.
set ttyfast            " Improves redrawing for newer computers.
set nostartofline      " When moving thru the lines, the cursor will try to stay in the previous columns.

set nocompatible
filetype plugin on
syntax on

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Disable backup files, you are using a version control system anyway :)
set nobackup
set nowritebackup
set noswapfile

" Tab management
set tabstop=2          " How many spaces takes a tab character.
set softtabstop=2      " The number of spaces a tab character counts for.
set expandtab          " Use spaces instead of tabs for indenting.
set shiftwidth=2       " Autoindent width.
set smarttab           " A tab executes automatic indentation in insert mode.
set smartindent        " Adds automatic indentation on new line.
set autoindent         " Adds automatic indentation on copy paste as well.

" Buffer management
set hidden             " Enables hidden buffers. You don't have to close a buffer if you changes buffer.

" Search Options
set hlsearch           " Highlight search.
set incsearch          " Incremental search.
set magic              " Set magic on, for regular expressions.
set ignorecase         " Searches are Non Case-sensitive.
set smartcase          " Overrides ignorecase, if search contains uppercase character.

let mapleader="\<Space>"
nnoremap <leader>l :source ~/.vimrc<cr>

nnoremap ; :
vnoremap ; :

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>mm :!clear && make<cr>
nnoremap <leader>mt :!clear && make test<cr>
nnoremap <leader>mc :!clear && make clean<cr>
nnoremap <leader>m<leader> :!clear && make 

" Move lines in all modes
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

call plug#begin('~/.vim/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'kana/vim-arpeggio'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'jeetsukumaran/vim-buffergator'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-gitgutter'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'scrooloose/nerdtree'
    Plug 'elzr/vim-json'
    Plug 'dbakker/vim-projectroot'
    Plug 'gregsexton/MatchTag'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-surround'
    Plug 'ervandew/supertab'
    Plug 'joeytwiddle/sexy_scroller.vim'
    Plug 'nathanalderson/yang.vim'
    Plug 'tpope/vim-repeat'
    Plug 'sukima/xmledit'
    Plug 'vimwiki/vimwiki'
  call plug#end()

  "Arpeggio
  call arpeggio#map('iv', '', 0, 'jk', '<Esc>')

  "BetterWhitespace
  nnoremap <leader>sw :StripWhitespace<cr>

  "Bookmarks
  let g:bookmark_sign = '>>'
  let g:bookmark_annotation_sign = '##'
  let g:bookmark_auto_close = 1
  let g:bookmark_highlight_lines = 1
  let g:bookmark_save_per_working_dir = 1
  let g:bookmark_auto_save = 1
  let g:bookmark_center = 1

  "GitGutter
  let g:gitgutter_max_signs = 2000

  "NERDTree
  nnoremap <silent> <F2> :NERDTreeToggle<CR>
  let g:NERDTreeMapMenu = '<F3>'
  let g:NERDTreeChristmasTree = 1
  let g:NERDTreeCaseSensitiveSort = 1
  let g:NERDTreeQuitOnOpen = 1
  let g:NERDTreeWinPos = 'left'
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeDirArrows=0
  let NERDTreeMinimalUI=0
  let NERDTreeIgnore = ['\.pyc$']

  "ProjectRoot
  function! <SID>AutoProjectRootCD()
    try
      if &ft != 'help'
        ProjectRootCD
      endif
    catch
      " Silently ignore invalid buffers
    endtry
  endfunction
  autocmd BufEnter * call <SID>AutoProjectRootCD()

  "SexyScroller
  let g:SexyScroller_MaxTime = 400
  let g:SexyScroller_EasingStyle = 3

