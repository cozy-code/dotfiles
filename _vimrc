" to manage vim dot files in dropbox
"$ ln -s ~/Dropbox/dotfiles/_vimrc ~/.vimrc
"$ ln -s ~/Dropbox/dotfiles/_gvimrc ~/.gvimrc
"$ ln -s ~/Dropbox/dotfiles/_vim ~/.vim
" 
" windows
" mklink .vimrc path\to\Dropbox\dotfiles\_vimrc
" mklink /d .vim path\to\Dropbox\dotfiles\_vim 
" mklink .gvimrc path\to\Dropbox\dotfiles\_gvimrc
" mkdir %HOME%\var

"file encode
set fileencoding=utf-8
"set fileencoding=japan
set fileencodings=iso-2022-jp,utf-8,euc-jp,ucs-2le,ucs-2,cp932
set encoding=utf-8
scriptencoding=utf-8



"
" working directory
"
set backupdir=$HOME/var
set directory=$HOME/var

"
" Status Line
" ステータス
set statusline=%F\ %m%r%h%w%=
set statusline+=enc=%{&fileencoding}\|eol=%{&ff}\|type=%Y\|col=%04v\|row=%04l/%L
set laststatus=2    "show status

"
"インデント
"
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab   "use space insted TAB

"
" keybords
"
set backspace=start,eol,indent

" clip bord
set clipboard=unnamed,autoselect

"
" view
"
set number  "show line number

set list    "show control chars
"set listchars=tab:>-,trail:.,eol:¶,extends:>,precedes:<
set listchars=eol:¬,tab:▸\
"control char color NonText:crlf SpecialKey:Tab
"hi NonText guibg=NONE guifg=DarkGreen
"hi SpecialKey guibg=NONE guifg=Gray40

set cursorline      "show current cursor line

" 全角スペース"　"の表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkGray gui=reverse guifg=DarkGray
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        "ZenkakuSpace をカラーファイルで設定するなら、
        "次の行をコメントアウト
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif


" fonts
" Windows
set guifont="ＭＳ ゴシック":h9

"
" file
"
set hidden  "enable open new file without save

"
" neobundle
"
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif
if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

"Manage neobundle itself
NeoBundleFetch 'Shougo/neobundle.vim'

"insert neobundle pulugin here
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/neocomplcache'
source $HOME/.vim/_vim_neocomplcache


call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" end of neobundle

" color / It's must be after neobundle 
syntax on
filetype on
"filetype plugin on
"filetype indent on

