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

"
" working directory
"
set backupdir=$HOME/var
set directory=$HOME/var

"
" Status Line
" ステータス
set statusline=%F%m%r%h%w\ [FORMAT=%{&fileencoding}/%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

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

"
" view
"
set number  "show line number

set list    "show control chars
set listchars=tab:»-,trail:-,eol:¬,extends:»,precedes:«
"control char color NonText:crlf SpecialKey:Tab
hi NonText guibg=NONE guifg=DarkGreen
hi SpecialKey guibg=NONE guifg=Gray40

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
set guifont="MS ゴシック":h10

"
" file
"
set hidden  "enable open new file without save

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

" color / It's must be after neobundle 
syntax on


