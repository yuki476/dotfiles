" ####### Vundle ###############################
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ### Vundle自体のインストール
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'reireias/vim-cheatsheet'
Plugin 'simeji/winresizer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()
filetype plugin indent on
" ##############################################

" ###### Plugin-settings ################
scriptencoding utf-8

" GVimのみ
" set guifont=RictyDiscord-Regular-Powerline:h10

" ## vim-cheatseet
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md' "cheetsheet指定

" ## winresizer
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" ## vim-airline ###################################################
let g:airline_theme = 'hybridline'
set laststatus=2
set t_Co=256 "この設定が無いと色がちゃんと出ない
set showtabline=2 "常にタブラインを表示

" PolerLineフォント有効
let g:airline_powerline_fonts=1
let g:Powerline_symbols='compatible'

" ##### airline extensionの設定 ################
" read-onlyインジケータON
let g:airline#extensions#readonly#enabled = 1

" #### airline-branch
" 左から a/b/c --- x/y/z/
" git branchの表示
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
" git管理されていない場合の表示
let g:airline#extensions#branch#empty_message = 'none repo.'

" #### airline-tabline:上部のタブライン
let g:airline#extensions#tabline#enabled = 1 " tabline ON
let g:airline#extensions#tabline#buffer_idx_mode = 1 " tab No. on
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" straightデザイン適用時のtabulineの右側区切り文字設定
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#fnamemod = ':t'


" airlineレイアウト設定
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z', 'warning', 'error']]
" 右から a > b > c --------- x < y < z < warning < error
"let g:airline_section_a = airline#section#create(['mode', 'crypt', 'paste', 'spell', 'iminsert'])
"let g:airline_section_b = airline#section#create(['hunks', 'branch'])
"let g:airline_section_c = airline#section#create(['buffreline'または'firename'])

"let g:airline_section_x = airline#section#create(['tagbar', 'filetype', 'virtualenv'])
"let g:airline_section_x = airline#section#create(['tagbar', 'filetype'])
"let g:airline_section_y = airline#section#create(['fileencoding', 'fileformat'])
"let g:airline_section_z = airline#section#create(['percentage', 'line number', 'column number'])


" ##### 以下、Vim本体の設定 ########################################
"

" #### 色関連の設定はcolorの方で行うこと
" ○や□の文字が崩れる問題を回避
set ambiwidth=double

" backspaceの有効化
set backspace=indent,eol,start

" 行番号
set number

" カーソル位置の縦横線表示
set cursorline
set cursorcolumn

" 不可視文字を表示 tab/改行
set list
set listchars=tab:>-,eol:<
"

" beep音の視覚化
set visualbell
" タブの設定
set expandtab
set tabstop=4

" 検索ハイライト
set hlsearch
" 検索ハイライトをEsc二連打で無効化
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

set ambiwidth=double
set clipboard+=unnamed,autoselect

" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2 "ステータスラインを常に表示
set showmode "現在のモードを表示
set showcmd "打ったコマンドをステータスラインの下に表示
set statusline=%F%f%h= " ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

set wildmenu
set wildmode=list:longest
set history=5000

syntax on

" ### Undo永続化 ##########
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
endif


"" ### クリップボードからのPaste時に自動インデント無効化 ######
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"" ### マウスでカーソル・スクロール移動可 ######
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif


colorscheme mycolors
