" Name:         Artesanal
" Description:  A Vim colorscheme with light and dark variants based on Material Design.
" Author:       Stefan Wimmer <wimstefan@gmail.com>
" Maintainer:   Stefan Wimmer <wimstefan@gmail.com>
" Website:      https://github.com/wimstefan/vim-artesanal
" License:      Vim License (see `:help license`)
" Last Updated: Sat 07 Apr 2018 05:41:24 AM CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Artesanal] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'artesanal'

if &background ==# 'dark'
  " Color similarity table (dark background)
  "         black: GUI=#000000/rgb(  0,  0,  0)  Term= 16 #000000/rgb(  0,  0,  0)  [delta=0.000000]
  "  brightyellow: GUI=#ffffaf/rgb(255,255,175)  Term=229 #ffffaf/rgb(255,255,175)  [delta=0.000000]
  "   brightwhite: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
  "           bg3: GUI=#616161/rgb( 97, 97, 97)  Term=241 #626262/rgb( 98, 98, 98)  [delta=0.368854]
  "         white: GUI=#dcdcdc/rgb(220,220,220)  Term=253 #dadada/rgb(218,218,218)  [delta=0.455975]
  "           bg0: GUI=#141414/rgb( 20, 20, 20)  Term=233 #121212/rgb( 18, 18, 18)  [delta=0.515624]
  "           fg1: GUI=#ebebeb/rgb(235,235,235)  Term=255 #eeeeee/rgb(238,238,238)  [delta=0.636113]
  "           bg2: GUI=#505050/rgb( 80, 80, 80)  Term=239 #4e4e4e/rgb( 78, 78, 78)  [delta=0.689525]
  "           fg2: GUI=#d3d3d3/rgb(211,211,211)  Term=252 #d0d0d0/rgb(208,208,208)  [delta=0.713123]
  "           fg0: GUI=#fbfbfb/rgb(251,251,251)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.795722]
  "       darkred: GUI=#b30000/rgb(179,  0,  0)  Term=124 #af0000/rgb(175,  0,  0)  [delta=0.799362]
  "        yellow: GUI=#ffff80/rgb(255,255,128)  Term=228 #ffff87/rgb(255,255,135)  [delta=0.859693]
  "           bg1: GUI=#333333/rgb( 51, 51, 51)  Term=236 #303030/rgb( 48, 48, 48)  [delta=0.961402]
  "   brightblack: GUI=#696969/rgb(105,105,105)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=1.151169]
  "           fg4: GUI=#707070/rgb(112,112,112)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=1.558945]
  "           bg4: GUI=#727272/rgb(114,114,114)  Term=243 #767676/rgb(118,118,118)  [delta=1.588827]
  "    brightcyan: GUI=#b2dfdb/rgb(178,223,219)  Term=152 #afd7d7/rgb(175,215,215)  [delta=2.696709]
  "   brightgreen: GUI=#b3ffcc/rgb(179,255,204)  Term=158 #afffd7/rgb(175,255,215)  [delta=3.041362]
  "         green: GUI=#47b36b/rgb( 71,179,107)  Term= 35 #00af5f/rgb(  0,175, 95)  [delta=3.445808]
  "           red: GUI=#ff4d4d/rgb(255, 77, 77)  Term=203 #ff5f5f/rgb(255, 95, 95)  [delta=3.492015]
  "      darkblue: GUI=#266280/rgb( 38, 98,128)  Term= 24 #005f87/rgb(  0, 95,135)  [delta=3.714150]
  "     brightred: GUI=#ff9999/rgb(255,153,153)  Term=210 #ff8787/rgb(255,135,135)  [delta=4.179329]
  "          blue: GUI=#7ab1cc/rgb(122,177,204)  Term= 74 #5fafd7/rgb( 95,175,215)  [delta=4.276048]
  "   darkmagenta: GUI=#4527a0/rgb( 69, 39,160)  Term= 55 #5f00af/rgb( 95,  0,175)  [delta=5.173706]
  " brightmagenta: GUI=#d1c4e9/rgb(209,196,233)  Term=189 #d7d7ff/rgb(215,215,255)  [delta=5.536146]
  "    darkyellow: GUI=#ffea00/rgb(255,234,  0)  Term=226 #ffff00/rgb(255,255,  0)  [delta=5.745583]
  "      darkcyan: GUI=#00695c/rgb(  0,105, 92)  Term= 23 #005f5f/rgb(  0, 95, 95)  [delta=6.224963]
  "     darkgreen: GUI=#268044/rgb( 38,128, 68)  Term= 29 #00875f/rgb(  0,135, 95)  [delta=6.622343]
  "       magenta: GUI=#ab47bc/rgb(171, 71,188)  Term=133 #af5faf/rgb(175, 95,175)  [delta=6.806495]
  "          cyan: GUI=#009688/rgb(  0,150,136)  Term= 30 #008787/rgb(  0,135,135)  [delta=7.127207]
  "    brightblue: GUI=#cceeff/rgb(204,238,255)  Term=195 #d7ffff/rgb(215,255,255)  [delta=9.196998]
  if !has('gui_running') && get(g:, 'artesanal_transp_bg', 0)
    hi Normal ctermfg=255 ctermbg=NONE guifg=#ebebeb guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=NONE guifg=#ffff80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=252 ctermbg=NONE guifg=#d3d3d3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=241 ctermbg=NONE guifg=#616161 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=255 ctermbg=233 guifg=#ebebeb guibg=#141414 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=236 guifg=#ffff80 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=242 ctermbg=236 guifg=#696969 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=252 ctermbg=236 guifg=#d3d3d3 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=241 ctermbg=233 guifg=#616161 guibg=#141414 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333333 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333333 guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
  hi DiffAdd ctermfg=242 ctermbg=158 guifg=#707070 guibg=#b3ffcc guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=242 ctermbg=195 guifg=#707070 guibg=#cceeff guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=242 ctermbg=210 guifg=#707070 guibg=#ff9999 guisp=NONE cterm=NONE gui=NONE
  hi DiffText ctermfg=242 ctermbg=229 guifg=#707070 guibg=#ffffaf guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=233 ctermbg=NONE guifg=#141414 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=233 ctermbg=203 guifg=#141414 guibg=#ff4d4d guisp=NONE cterm=NONE gui=NONE
  hi! link ErrorMsg Error
  hi Folded ctermfg=242 ctermbg=236 guifg=#696969 guibg=#333333 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=229 ctermbg=16 guifg=#ffffaf guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi LineNr ctermfg=241 ctermbg=236 guifg=#616161 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=NONE ctermbg=239 guifg=NONE guibg=#505050 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=255 ctermbg=239 guifg=#ebebeb guibg=#505050 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=239 guifg=NONE guibg=#505050 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=236 ctermbg=74 guifg=#333333 guibg=#7ab1cc guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=243 guifg=NONE guibg=#727272 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=226 ctermbg=NONE guifg=#ffea00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=229 ctermbg=16 guifg=#ffffaf guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=243 ctermbg=NONE guifg=#727272 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=#ff4d4d cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=#7ab1cc cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=#009688 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=#ab47bc cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=239 ctermbg=255 guifg=#505050 guibg=#ebebeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=236 ctermbg=252 guifg=#333333 guibg=#d3d3d3 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=252 ctermbg=241 guifg=#d3d3d3 guibg=#616161 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=255 ctermbg=236 guifg=#ebebeb guibg=#333333 guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=231 ctermbg=NONE guifg=#fbfbfb guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333333 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=74 ctermbg=239 guifg=#7ab1cc guibg=#505050 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi Conditional ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Delimiter Statement
  hi Exception ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Label Statement
  hi Macro ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Operator Normal
  hi PreCondit ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=228 ctermbg=NONE guifg=#ffff80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=fg ctermbg=233 guifg=fg guibg=#141414 guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=241 guifg=NONE guibg=#616161 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=231 ctermbg=241 guifg=#fbfbfb guibg=#616161 guisp=NONE cterm=NONE,bold gui=NONE,bold
  if get(g:, "artesanal_italic", 0)
    hi Comment cterm=italic
    hi Folded cterm=italic
    hi SpellBad cterm=italic,underline
    hi SpellCap cterm=italic,underline
    hi SpellLocal cterm=italic,underline
    hi SpellRare cterm=italic,underline
    hi Todo cterm=italic
  endif
  hi! link iCursor Cursor
  hi! link vCursor Cursor
  hi NormalMode ctermfg=252 ctermbg=233 guifg=#d3d3d3 guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=74 ctermbg=233 guifg=#7ab1cc guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=30 ctermbg=233 guifg=#009688 guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=228 ctermbg=233 guifg=#ffff80 guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=133 ctermbg=233 guifg=#ab47bc guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=228 ctermbg=233 guifg=#ffff80 guibg=#141414 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('terminal')
    let g:terminal_color_0  = '#141414'
    let g:terminal_color_8  = '#696969'
    let g:terminal_color_1  = '#ff4d4d'
    let g:terminal_color_9  = '#ff9999'
    let g:terminal_color_2  = '#47b36b'
    let g:terminal_color_10 = '#b3ffcc'
    let g:terminal_color_3  = '#ffff80'
    let g:terminal_color_11 = '#ffffaf'
    let g:terminal_color_4  = '#7ab1cc'
    let g:terminal_color_12 = '#cceeff'
    let g:terminal_color_5  = '#ab47bc'
    let g:terminal_color_13 = '#d1c4e9'
    let g:terminal_color_6  = '#009688'
    let g:terminal_color_14 = '#b2dfdb'
    let g:terminal_color_7  = '#fbfbfb'
    let g:terminal_color_15 = '#d3d3d3'
  endif
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=236 ctermbg=255 guifg=#333333 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
  finish
endif

" Color similarity table (light background)
"         black: GUI=#000000/rgb(  0,  0,  0)  Term= 16 #000000/rgb(  0,  0,  0)  [delta=0.000000]
"           bg4: GUI=#a8a8a8/rgb(168,168,168)  Term=248 #a8a8a8/rgb(168,168,168)  [delta=0.000000]
"   brightwhite: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
"           bg3: GUI=#bdbdbd/rgb(189,189,189)  Term=250 #bcbcbc/rgb(188,188,188)  [delta=0.262501]
"         white: GUI=#dcdcdc/rgb(220,220,220)  Term=253 #dadada/rgb(218,218,218)  [delta=0.455975]
"           fg0: GUI=#141414/rgb( 20, 20, 20)  Term=233 #121212/rgb( 18, 18, 18)  [delta=0.515624]
"           bg1: GUI=#ebebeb/rgb(235,235,235)  Term=255 #eeeeee/rgb(238,238,238)  [delta=0.636113]
"           fg2: GUI=#505050/rgb( 80, 80, 80)  Term=239 #4e4e4e/rgb( 78, 78, 78)  [delta=0.689525]
"           bg2: GUI=#d3d3d3/rgb(211,211,211)  Term=252 #d0d0d0/rgb(208,208,208)  [delta=0.713123]
"           bg0: GUI=#fbfbfb/rgb(251,251,251)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.795722]
"           fg1: GUI=#333333/rgb( 51, 51, 51)  Term=236 #303030/rgb( 48, 48, 48)  [delta=0.961402]
"   brightblack: GUI=#696969/rgb(105,105,105)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=1.151169]
"           fg4: GUI=#707070/rgb(112,112,112)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=1.558945]
"       darkred: GUI=#a30000/rgb(163,  0,  0)  Term=124 #af0000/rgb(175,  0,  0)  [delta=2.390642]
"    brightcyan: GUI=#b2dfdb/rgb(178,223,219)  Term=152 #afd7d7/rgb(175,215,215)  [delta=2.696709]
"   brightgreen: GUI=#b3ffcc/rgb(179,255,204)  Term=158 #afffd7/rgb(175,255,215)  [delta=3.041362]
"         green: GUI=#47b36b/rgb( 71,179,107)  Term= 35 #00af5f/rgb(  0,175, 95)  [delta=3.445808]
"      darkblue: GUI=#266280/rgb( 38, 98,128)  Term= 24 #005f87/rgb(  0, 95,135)  [delta=3.714150]
"  brightyellow: GUI=#ffd699/rgb(255,214,153)  Term=222 #ffd787/rgb(255,215,135)  [delta=4.020486]
"     brightred: GUI=#ff9999/rgb(255,153,153)  Term=210 #ff8787/rgb(255,135,135)  [delta=4.179329]
"    darkyellow: GUI=#cc7a00/rgb(204,122,  0)  Term=172 #d78700/rgb(215,135,  0)  [delta=4.383031]
"   darkmagenta: GUI=#4527a0/rgb( 69, 39,160)  Term= 55 #5f00af/rgb( 95,  0,175)  [delta=5.173706]
" brightmagenta: GUI=#d1c4e9/rgb(209,196,233)  Term=189 #d7d7ff/rgb(215,215,255)  [delta=5.536146]
"        yellow: GUI=#ff9900/rgb(255,153,  0)  Term=208 #ff8700/rgb(255,135,  0)  [delta=6.094939]
"      darkcyan: GUI=#00695c/rgb(  0,105, 92)  Term= 23 #005f5f/rgb(  0, 95, 95)  [delta=6.224963]
"     darkgreen: GUI=#268044/rgb( 38,128, 68)  Term= 29 #00875f/rgb(  0,135, 95)  [delta=6.622343]
"       magenta: GUI=#ab47bc/rgb(171, 71,188)  Term=133 #af5faf/rgb(175, 95,175)  [delta=6.806495]
"          cyan: GUI=#009688/rgb(  0,150,136)  Term= 30 #008787/rgb(  0,135,135)  [delta=7.127207]
"          blue: GUI=#5995b3/rgb( 89,149,179)  Term= 31 #0087af/rgb(  0,135,175)  [delta=7.422120]
"           red: GUI=#b72e2e/rgb(183, 46, 46)  Term=124 #af0000/rgb(175,  0,  0)  [delta=8.068751]
"    brightblue: GUI=#cceeff/rgb(204,238,255)  Term=195 #d7ffff/rgb(215,255,255)  [delta=9.196998]
if !has('gui_running') && get(g:, 'artesanal_transp_bg', 0)
  hi Normal ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=208 ctermbg=NONE guifg=#ff9900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=239 ctermbg=NONE guifg=#505050 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=250 ctermbg=NONE guifg=#bdbdbd guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=236 ctermbg=231 guifg=#333333 guibg=#fbfbfb guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=208 ctermbg=255 guifg=#ff9900 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=242 ctermbg=255 guifg=#696969 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=239 ctermbg=255 guifg=#505050 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=250 ctermbg=231 guifg=#bdbdbd guibg=#fbfbfb guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebebeb guisp=NONE cterm=NONE,bold,italic gui=NONE,bold,italic
hi DiffAdd ctermfg=242 ctermbg=158 guifg=#707070 guibg=#b3ffcc guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=242 ctermbg=195 guifg=#707070 guibg=#cceeff guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=242 ctermbg=210 guifg=#707070 guibg=#ff9999 guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=242 ctermbg=222 guifg=#707070 guibg=#ffd699 guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=231 ctermbg=NONE guifg=#fbfbfb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=231 ctermbg=124 guifg=#fbfbfb guibg=#b72e2e guisp=NONE cterm=NONE gui=NONE
hi! link ErrorMsg Error
hi Folded ctermfg=242 ctermbg=255 guifg=#696969 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=222 ctermbg=16 guifg=#ffd699 guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi LineNr ctermfg=250 ctermbg=255 guifg=#bdbdbd guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d3d3d3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=248 ctermbg=NONE guifg=#a8a8a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=236 ctermbg=252 guifg=#333333 guibg=#d3d3d3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d3d3d3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=31 guifg=#ebebeb guibg=#5995b3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=248 guifg=NONE guibg=#a8a8a8 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=172 ctermbg=NONE guifg=#cc7a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=222 ctermbg=16 guifg=#ffd699 guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=248 ctermbg=NONE guifg=#a8a8a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=#b72e2e cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=#5995b3 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=#009688 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=#ab47bc cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=252 ctermbg=236 guifg=#d3d3d3 guibg=#333333 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=255 ctermbg=239 guifg=#ebebeb guibg=#505050 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine TabLineFill
hi TabLineFill ctermfg=239 ctermbg=250 guifg=#505050 guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=236 ctermbg=255 guifg=#333333 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=233 ctermbg=NONE guifg=#141414 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=31 ctermbg=252 guifg=#5995b3 guibg=#d3d3d3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Boolean ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi Conditional ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Delimiter Statement
hi Exception ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Identifier ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Label Statement
hi Macro ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=133 ctermbg=NONE guifg=#ab47bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Operator Normal
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=208 ctermbg=NONE guifg=#ff9900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=fg ctermbg=231 guifg=fg guibg=#fbfbfb guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
hi Type ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=31 ctermbg=NONE guifg=#5995b3 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=250 guifg=NONE guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=233 ctermbg=250 guifg=#141414 guibg=#bdbdbd guisp=NONE cterm=NONE,bold gui=NONE,bold
if get(g:, "artesanal_italic", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi SpellBad cterm=italic,underline
  hi SpellCap cterm=italic,underline
  hi SpellLocal cterm=italic,underline
  hi SpellRare cterm=italic,underline
  hi Todo cterm=italic
endif
hi! link iCursor Cursor
hi! link vCursor Cursor
hi NormalMode ctermfg=239 ctermbg=231 guifg=#505050 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=31 ctermbg=231 guifg=#5995b3 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=30 ctermbg=231 guifg=#009688 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=208 ctermbg=231 guifg=#ff9900 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=133 ctermbg=231 guifg=#ab47bc guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=208 ctermbg=231 guifg=#ff9900 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('terminal')
  let g:terminal_color_0  = '#fbfbfb'
  let g:terminal_color_8  = '#696969'
  let g:terminal_color_1  = '#b72e2e'
  let g:terminal_color_9  = '#ff9999'
  let g:terminal_color_2  = '#47b36b'
  let g:terminal_color_10 = '#b3ffcc'
  let g:terminal_color_3  = '#ff9900'
  let g:terminal_color_11 = '#ffd699'
  let g:terminal_color_4  = '#5995b3'
  let g:terminal_color_12 = '#cceeff'
  let g:terminal_color_5  = '#ab47bc'
  let g:terminal_color_13 = '#d1c4e9'
  let g:terminal_color_6  = '#009688'
  let g:terminal_color_14 = '#b2dfdb'
  let g:terminal_color_7  = '#141414'
  let g:terminal_color_15 = '#505050'
endif
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=255 ctermbg=236 guifg=#ebebeb guibg=#333333 guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color: fg0 #141414 ~
" Color: fg1 #333333 ~
" Color: fg2 #505050 ~
" Color: fg4 #707070 ~
" Color: bg0 #fbfbfb ~
" Color: bg1 #ebebeb ~
" Color: bg2 #d3d3d3 ~
" Color: bg3 #bdbdbd ~
" Color: bg4 #a8a8a8 ~
" Color: black                #000000     ~        Black
" Color: brightblack          #696969     ~        DimGray
" Color: red                  #b72e2e     ~        Red
" Color: brightred            #ff9999     ~        LightRed
" Color: darkred              #a30000     ~        DarkRed
" Color: green                #47b36b     ~        Green
" Color: brightgreen          #b3ffcc     ~        LightGreen
" Color: darkgreen            #268044     ~        DarkGreen
" Color: yellow               #ff9900     ~        Yellow
" Color: brightyellow         #ffd699     ~        LightYellow
" Color: darkyellow           #cc7a00     ~        DarkYellow
" Color: blue                 #5995b3     ~        Blue
" Color: brightblue           #cceeff     ~        LightBlue
" Color: darkblue             #266280     ~        DarkBlue
" Color: magenta              #ab47bc     ~        Magenta
" Color: brightmagenta        #d1c4e9     ~        LightMagenta
" Color: darkmagenta          #4527a0     ~        DarkMagenta
" Color: cyan                 #009688     ~        Cyan
" Color: brightcyan           #b2dfdb     ~        LightCyan
" Color: darkcyan             #00695c     ~        DarkCyan
" Color: white                #dcdcdc     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"     Normal       fg1           none
"     CursorLineNr yellow        none
"     FoldColumn   brightblack   none
"     SignColumn   fg2           none
"     VertSplit    bg3           none
"     Normal       fg1           bg0
"     CursorLineNr yellow        bg1
"     FoldColumn   brightblack   bg1
"     SignColumn   fg2           bg1
"     VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none         bg1     bold,italic
" DiffAdd                          fg4          brightgreen
" DiffChange                       fg4          brightblue
" DiffDelete                       fg4          brightred
" DiffText                         fg4          brightyellow
" Directory                        blue         none    bold
" EndOfBuffer                      bg0          none
" Error                            bg0          red
" ErrorMsg                      -> Error
" Folded                           brightblack  bg1     g=italic
" IncSearch                        brightyellow black   reverse
" LineNr                           bg3          bg1
" MatchParen                       none         bg2     bold
" ModeMsg                          blue         none
" MoreMsg                          green        none
" NonText                          bg4          none
" Pmenu                            fg1          bg2
" PmenuSbar                        none         bg2
" PmenuSel                         bg1          blue    bold
" PmenuThumb                       none         bg4
" Question                         darkyellow   none
" QuickFixLine                  -> Search
" Search                           brightyellow black   reverse
" SpecialKey                       bg4          none
" SpellBad                         red          none    t=underline g=italic,undercurl s=red
" SpellCap                         blue         none    t=underline g=italic,undercurl s=blue
" SpellLocal                       cyan         none    t=underline g=italic,undercurl s=cyan
" SpellRare                        magenta      none    t=underline g=italic,undercurl s=magenta
" StatusLine                       bg2          fg1     reverse
" StatusLineNC                     bg1          fg2     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      fg2          bg3
" TabLineSel                       fg1          bg1
" Title                            fg0          none    bold
" Visual                           none         bg1
" VisualNOS                     -> Visual
" WarningMsg                       red          none
" WildMenu                         blue         bg2     bold
" Boolean                          magenta      none
" Character                        magenta      none
" Comment                          brightblack  none    g=italic
" Conditional                      red          none
" Constant                         magenta      none
" Define                           cyan         none
" Debug                            red          none
" Delimiter                     -> Statement
" Exception                        red          none
" Float                            magenta      none
" Function                         blue         none    bold
" Identifier                       cyan         none
" Ignore                           fg           none
" Include                          cyan         none
" Keyword                          red          none
" Label                         -> Statement
" Macro                            cyan         none
" Number                           magenta      none
" Operator                      -> Normal
" PreCondit                        cyan         none
" PreProc                          cyan         none
" Repeat                           red          none
" SpecialChar                      red          none
" SpecialComment                   red          none
" Statement                        red          none
" StorageClass                     green        none
" Special                          yellow       none
" String                           green        none
" Structure                        cyan         none
" Tag                           -> Special
" Todo                             fg           bg0     t=bold g=bold,italic
" Type                             cyan         none
" Typedef                          cyan         none
" Underlined                       blue         none    underline
" lCursor                       -> Cursor
" CursorIM                         none         none    reverse
" ToolbarLine                      none         bg3
" ToolbarButton                    fg0          bg3     bold
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg2          bg0     reverse
" InsertMode                       blue         bg0     reverse
" ReplaceMode                      cyan         bg0     reverse
" VisualMode                       yellow       bg0     reverse
" CommandMode                      magenta      bg0     reverse
" Warnings                         yellow       bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
" Background: dark
" Color: fg0 #fbfbfb ~
" Color: fg1 #ebebeb ~
" Color: fg2 #d3d3d3 ~
" Color: fg4 #707070 ~
" Color: bg0 #141414 ~
" Color: bg1 #333333 ~
" Color: bg2 #505050 ~
" Color: bg3 #616161 ~
" Color: bg4 #727272 ~
" Color: black                #000000     ~        Black
" Color: brightblack          #696969     ~        DimGray
" Color: red                  #ff4d4d     ~        Red
" Color: brightred            #ff9999     ~        LightRed
" Color: darkred              #b30000     ~        DarkRed
" Color: green                #47b36b     ~        Green
" Color: brightgreen          #b3ffcc     ~        LightGreen
" Color: darkgreen            #268044     ~        DarkGreen
" Color: yellow               #ffff80     ~        Yellow
" Color: brightyellow         #ffffaf     ~        LightYellow
" Color: darkyellow           #ffea00     ~        DarkYellow
" Color: blue                 #7ab1cc     ~        Blue
" Color: brightblue           #cceeff     ~        LightBlue
" Color: darkblue             #266280     ~        DarkBlue
" Color: magenta              #ab47bc     ~        Magenta
" Color: brightmagenta        #d1c4e9     ~        LightMagenta
" Color: darkmagenta          #4527a0     ~        DarkMagenta
" Color: cyan                 #009688     ~        Cyan
" Color: brightcyan           #b2dfdb     ~        LightCyan
" Color: darkcyan             #00695c     ~        DarkCyan
" Color: white                #dcdcdc     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"     Normal       fg1           none
"     CursorLineNr yellow        none
"     FoldColumn   brightblack   none
"     SignColumn   fg2           none
"     VertSplit    bg3           none
"     Normal       fg1           bg0
"     CursorLineNr yellow        bg1
"     FoldColumn   brightblack   bg1
"     SignColumn   fg2           bg1
"     VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none         bg1     bold,italic
" DiffAdd                          fg4          brightgreen
" DiffChange                       fg4          brightblue
" DiffDelete                       fg4          brightred
" DiffText                         fg4          brightyellow
" Directory                        blue         none    bold
" EndOfBuffer                      bg0          none
" Error                            bg0          red
" ErrorMsg                      -> Error
" Folded                           brightblack  bg1     g=italic
" IncSearch                        brightyellow black   reverse
" LineNr                           bg3          bg1
" MatchParen                       none         bg2     bold
" ModeMsg                          blue         none
" MoreMsg                          green        none
" NonText                          bg4          none
" Pmenu                            fg1          bg2
" PmenuSbar                        none         bg2
" PmenuSel                         bg1          blue    bold
" PmenuThumb                       none         bg4
" Question                         darkyellow   none
" QuickFixLine                  -> Search
" Search                           brightyellow black   reverse
" SpecialKey                       bg4          none
" SpellBad                         red          none    t=underline g=italic,undercurl s=red
" SpellCap                         blue         none    t=underline g=italic,undercurl s=blue
" SpellLocal                       cyan         none    t=underline g=italic,undercurl s=cyan
" SpellRare                        magenta      none    t=underline g=italic,undercurl s=magenta
" StatusLine                       bg2          fg1     reverse
" StatusLineNC                     bg1          fg2     reverse
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      fg2          bg3
" TabLineSel                       fg1          bg1
" Title                            fg0          none    bold
" Visual                           none         bg1
" VisualNOS                     -> Visual
" WarningMsg                       red          none
" WildMenu                         blue         bg2     bold
" Boolean                          magenta      none
" Character                        magenta      none
" Comment                          brightblack  none    g=italic
" Conditional                      red          none
" Constant                         magenta      none
" Define                           cyan         none
" Debug                            red          none
" Delimiter                     -> Statement
" Exception                        red          none
" Float                            magenta      none
" Function                         blue         none    bold
" Identifier                       cyan         none
" Ignore                           fg           none
" Include                          cyan         none
" Keyword                          red          none
" Label                         -> Statement
" Macro                            cyan         none
" Number                           magenta      none
" Operator                      -> Normal
" PreCondit                        cyan         none
" PreProc                          cyan         none
" Repeat                           red          none
" SpecialChar                      red          none
" SpecialComment                   red          none
" Statement                        red          none
" StorageClass                     green        none
" Special                          yellow       none
" String                           green        none
" Structure                        cyan         none
" Tag                           -> Special
" Todo                             fg           bg0     t=bold g=bold,italic
" Type                             cyan         none
" Typedef                          cyan         none
" Underlined                       blue         none    underline
" lCursor                       -> Cursor
" CursorIM                         none         none    reverse
" ToolbarLine                      none         bg3
" ToolbarButton                    fg0          bg3     bold
" iCursor                       -> Cursor
" vCursor                       -> Cursor
" NormalMode                       fg2          bg0     reverse
" InsertMode                       blue         bg0     reverse
" ReplaceMode                      cyan         bg0     reverse
" VisualMode                       yellow       bg0     reverse
" CommandMode                      magenta      bg0     reverse
" Warnings                         yellow       bg0     reverse
" TermCursor        -> Cursor
" TermCursorNC         bg1            fg1
