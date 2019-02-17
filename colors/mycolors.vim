" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"
" molokaiを元に自分で更に改変
"
" 推奨されている色名 (これらはほとんどのシステムで利用可能である)
"     Red         LightRed        DarkRed
"     Green       LightGreen      DarkGreen       SeaGreen
"     Blue        LightBlue       DarkBlue        SlateBlue
"     Cyan        LightCyan       DarkCyan
"     Magenta     LightMagenta    DarkMagenta
"     Yellow      LightYellow     Brown           DarkYellow
"     Gray        LightGray       DarkGray
"     Black       White
"     Orange      Purple          Violet
" ctermbg=234 はbug.があるから使うな！！
"
hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="mycolors"

" 数字/文字/コメント etc.
hi Boolean         ctermfg=196
hi Character       ctermfg=144
hi Number          ctermfg=165
hi String          ctermfg=144
hi Conditional     ctermfg=161               cterm=bold
hi Constant        ctermfg=135               cterm=bold
hi Comment         ctermfg=60

" 不可視文字の色
hi SpecialKey      ctermfg=18
hi NonText         ctermfg=18

" 現在行の表示
hi Cursor          ctermfg=16  ctermbg=253
hi CursorLine                  ctermbg=235    cterm=underline
hi CursorColumn                ctermbg=233
hi ColorColumn                 ctermbg=236
" 行番号の表示
hi LineNr          ctermfg=208 ctermbg=236   cterm=NONE
hi CursorLineNr    ctermfg=236 ctermbg=208   cterm=bold

hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=75
hi Delimiter       ctermfg=241

hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=226 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102   cterm=bold

hi Directory       ctermfg=118               cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi Exception       ctermfg=118               cterm=bold
hi Float           ctermfg=135
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=118
hi Identifier      ctermfg=208               cterm=none
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi keyword         ctermfg=161               cterm=bold
hi Label           ctermfg=229               cterm=none
hi Macro           ctermfg=193

" 括弧の対応色 ()
hi MatchParen      ctermfg=202  ctermbg=17   cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel        ctermfg=255 ctermbg=242
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=118               cterm=bold
hi PreProc         ctermfg=118
hi Question        ctermfg=81
hi Repeat          ctermfg=161               cterm=bold
" 検索文字列
hi Search          ctermfg=154   ctermbg=241 cterm=bold

" marks column
" git情報表示列
hi SignColumn      ctermfg=118 ctermbg=236
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=81
if has("spell")
    hi SpellBad                ctermbg=52
    hi SpellCap                ctermbg=17
    hi SpellLocal              ctermbg=17
    hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
endif
hi Statement       ctermfg=161               cterm=bold
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=208
hi Structure       ctermfg=81
hi Tag             ctermfg=161
hi Title           ctermfg=166
hi Todo            ctermfg=231 ctermbg=232   cterm=bold

hi Typedef         ctermfg=81
hi Type            ctermfg=81                cterm=none
hi Underlined      ctermfg=244               cterm=underline

hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual                      ctermbg=235
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16


" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
"set background=dark

