set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'

"### YiXiang's Utils ###"
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'wesleyche/SrcExpl' 
Bundle 'Lokaltog/vim-easymotion'
Bundle 'msanders/snipmate.vim'
"*** vim-scripts Repo ***"
Bundle 'taglist.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
"*** vim Scheme ***"
Bundle 'desert.vim'
" ...rest of bundles
"### end of YiXiang's Utils ###" 
filetype plugin indent on     " required!
