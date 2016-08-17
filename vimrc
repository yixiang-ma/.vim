" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Vundle and bundles configuration
source ~/.vim/bundles.vim

" Highlight search results
set hlsearch
set backspace=2

"Always show current position
set ruler
set showmode

set showcmd
set showmatch
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set history=3000

" my configuration which depends on bundles
set statusline=+'%<\ %f\ %{fugitive#statusline()}'
set fileformat=unix
set encoding=utf-8
set tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags
set colorcolumn=80
set hidden
"######## YiXiang's Settings ############"
"------ vim's Settings -------"
    set hls
"------ End of vim's Settings -------"

"------ NERDTree's Settings ---"
    let NERDTreeHighlightCursorline = 0
    let NERDTreeWinPos = "right"
    let NERDTreeDirArrowExpandable = "+"
    let NERDTreeDirArrowCollapsible = "~"
    map <F3> :NERDTreeToggle <CR>
"------ End of NERDTree's Settings ---"

"------ Powerline's Settings ---"
    let g:Powerline_symbols = 'fancy'
"------ End of NERDTree's Settings ---"

"----- Taglist's Settings -----"
    let Tlist_Use_Right_Window = 0
    map <F2> :TlistToggle <CR>
"----- End of Taglist's Settings -----"

""----- Easymotion's Settings -----"
    map \\h <Plug>(easymotion-linebackward)
    map \\l <Plug>(easymotion-lineforward)
""----- End of Taglist's Settings -----"

""----- Scheme's setting ---"
    "colorscheme desert
    set t_Co=256
    colorscheme desert

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil <vim5632@rainslide.net>
function RemoveTrailingWhitespace()
    if &ft != "diff"
       let b:curcol = col(".")
       let b:curline = line(".")
       silent! %s/\s\+$//
       silent! %s/\(\s*\n\)\+\%$//
       call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()
"--- Show line number ---"
set nu

"--- GUI Fout --"
    set guifont=DejaVu\ Sans\ Mono\ Bold\ 15
