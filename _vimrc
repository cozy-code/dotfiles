" to manage vim dot files in dropbox
"$ ln -s ~/Dropbox/dotfiles/_vimrc ~/.vimrc
"$ ln -s ~/Dropbox/dotfiles/_gvimrc ~/.gvimrc
"$ ln -s ~/Dropbox/dotfiles/_vim ~/.vim
" 
" windows
" mklink .vimrc path\to\Dropbox\dotfiles\_vimrc
" mklink /d .vim path\to\Dropbox\dotfiles\_vim 
" mklink .gvimrc path\to\Dropbox\dotfiles\_gvimrc

"file encode
set fileencoding=utf-8
set fileencodings=iso-2022-jp,utf-8,euc-jp,ucs-2le,ucs-2,cp932

" Status Line
" ステータス
set statusline=%F%m%r%h%w\ [FORMAT=%{&fileencoding}/%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"インデント
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

" color

syntax on

set number  "show line number

" fonts
" Windows
set guifont=MS_Gothic:h10


"
" neobundle
"
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

"Manage neobundle itself
NeoBundleFetch 'Shougo/neobundle.vim'

"insert neobundle pulugin here


call neobundle#end()

" end of neobundle

