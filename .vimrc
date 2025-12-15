set nocompatible
set number
filetype indent on
filetype plugin on

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set relativenumber
syntax enable
inoremap jk <Esc>

set tabstop=2
set shiftwidth=2
set autoread
set ruler
set hlsearch

:set shortmess-=S "count search matches
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic
set ai "Auto indent

set si "Smart indent
set wrap "Wrap lines
set wildmenu
" Fuzzy search prefix
set path+=**

"Plugin setup (to decomment)
"let g:clang_library_path='/usr/lib/llvm-18/lib/libclang.so.1'
" Pressing ,ss will toggle and untoggle spell checking
"map <leader>ss :setlocal spell!<cr>
"call plug#begin()

" List your plugins here
"Plug 'davidhalter/jedi-vim'
"Plug 'rip-rip/clang_complete'
"call plug#end()
