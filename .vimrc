"""""color settings for hybrid
"set background=dark
"colorscheme hybrid
"""""color settings for iceberg
colorscheme iceberg
syntax on

"setting of backup
:set backupdir=~/.vim/backup
"setting of undofile
:set undodir=~/.vim/undo

"hilight
set hls
set cursorline

"
set number
highlight LineNr ctermfg=239

"setting of decimal number
set nrformats=

"setting for window size
set lines=40
set columns=160

"setting for tab command
set expandtab
set tabstop=2
set shiftwidth=2

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
"chimaru inserted
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'tpope/vim-rails'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'mattn/emmet-vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"set key-bind
noremap <C-l> :BufExplorer<C-m>

colorscheme iceberg
