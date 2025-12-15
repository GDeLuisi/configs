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

""""""""""""""""""""""""""""""
" => YAML
""""""""""""""""""""""""""""""
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set autoread
set ruler
set hlsearch

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

:set shortmess-=S "count search matches
" Ignore case when searching
set ignorecase

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

set wildmenu
" Fuzzy search prefix
set path+=**

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Plugin setup 
let g:clang_library_path='/usr/lib/llvm-18/lib/libclang.so.1'
call plug#begin()

" List your plugins here
Plug 'davidhalter/jedi-vim'
Plug 'rip-rip/clang_complete'
Plug 'tpope/vim-surround'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

