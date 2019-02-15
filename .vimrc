colorscheme mycolors

" ####### Vundle ###############################
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ### Vundle事態の
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'reireias/vim-cheatsheet'
Plugin 'simeji/winresizer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()
filetype plugin indent on
" ##############################################

" ###### Plugin-settings ################

" ## vim-cheatseet
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md' "cheetsheet指定

" ## winresizer
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" ## vim-airline
let g:airline_theme = 'molokai'
set laststatus=2
set t_Co=256 "この設定が無いと色がちゃんと出ないi
set showtabline=2 "常にタブラインを表示
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = '‡ '
let g:airline#extensions#ale#warning_symbol = '§ '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1


" 行番号
set number
hi CursorLineNr cterm=bold

" カーソル位置の縦横線表示
set cursorline
" hi CursorLine cterm=underline ctermfg=blue ctermbg=NONE
set cursorcolumn

" beep音の視覚化
set visualbell
" タブの設定
set expandtab
set tabstop=4

set hlsearch
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
set ambiwidth=double
set clipboard+=unnamed,autoselect

" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
set statusline=%F%f%h=
" ウインドウのタイトルバーにファイルのパス情報等を表示する  
set title

set wildmenu
set history=5000

syntax on

" ### Undo永続化 ##########
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo  
endif

" 文字がない場所にもカーソルを移動できるようにする"
"set virtualedit=all


"" #### 行番号の色 #########
 highlight LineNr ctermfg=darkyellow

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
