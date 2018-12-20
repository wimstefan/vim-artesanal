" Name:         Artesanal
" Description:  A Vim colorscheme with light and dark variants based on Material Design.
" Author:       Stefan Wimmer <wimstefan@gmail.com>
" Maintainer:   Stefan Wimmer <wimstefan@gmail.com>
" Website:      https://github.com/wimstefan/vim-artesanal
" License:      Vim License (see `:help license`)
" Last Updated: Thu 20 Dec 2018 03:05:22 PM CET

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
  if !has('gui_running') && get(g:, 'artesanal_transp_bg', 0)
    hi Normal ctermfg=255 ctermbg=NONE guifg=#ebebeb guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=NONE guifg=#ffff80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=252 ctermbg=NONE guifg=#d3d3d3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=242 ctermbg=NONE guifg=#6c7079 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=255 ctermbg=236 guifg=#ebebeb guibg=#2e3440 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=238 guifg=#ffff80 guibg=#424853 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=242 ctermbg=238 guifg=#696969 guibg=#424853 guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=252 ctermbg=238 guifg=#d3d3d3 guibg=#424853 guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=242 ctermbg=236 guifg=#6c7079 guibg=#2e3440 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=238 guifg=NONE guibg=#424853 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=NONE ctermbg=238 guifg=NONE guibg=#424853 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=231 ctermbg=65 guifg=#fbfbfb guibg=#4c8c6c guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=231 ctermbg=67 guifg=#fbfbfb guibg=#5f87af guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=231 ctermbg=167 guifg=#fbfbfb guibg=#d66363 guisp=NONE cterm=NONE gui=NONE
  hi DiffText ctermfg=231 ctermbg=65 guifg=#fbfbfb guibg=#4c8c6c guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=236 ctermbg=NONE guifg=#2e3440 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=236 ctermbg=203 guifg=#2e3440 guibg=#ff4d4d guisp=NONE cterm=NONE gui=NONE
  hi! link ErrorMsg Error
  hi Folded ctermfg=242 ctermbg=238 guifg=#696969 guibg=#424853 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=229 ctermbg=16 guifg=#ffffaf guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi LineNr ctermfg=242 ctermbg=238 guifg=#6c7079 guibg=#424853 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=NONE ctermbg=59 guifg=NONE guibg=#575c66 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=102 ctermbg=NONE guifg=#81858c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=255 ctermbg=59 guifg=#ebebeb guibg=#575c66 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=59 guifg=NONE guibg=#575c66 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=238 ctermbg=252 guifg=#424853 guibg=#d3d3d3 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=102 guifg=NONE guibg=#81858c guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=226 ctermbg=NONE guifg=#ffea00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=229 ctermbg=16 guifg=#ffffaf guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=102 ctermbg=NONE guifg=#81858c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=#ff4d4d cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=#7ab1cc cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=#009688 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=#a14cc9 cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=59 ctermbg=255 guifg=#575c66 guibg=#ebebeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=238 ctermbg=252 guifg=#424853 guibg=#d3d3d3 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=252 ctermbg=242 guifg=#d3d3d3 guibg=#6c7079 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=255 ctermbg=238 guifg=#ebebeb guibg=#424853 guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=231 ctermbg=NONE guifg=#fbfbfb guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=238 guifg=NONE guibg=#424853 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=74 ctermbg=59 guifg=#7ab1cc guibg=#575c66 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Boolean ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=242 ctermbg=NONE guifg=#696969 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi Conditional ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Delimiter Statement
  hi Exception ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Identifier ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=203 ctermbg=NONE guifg=#ff4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Label Statement
  hi Macro ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=98 ctermbg=NONE guifg=#a14cc9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
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
  hi Todo ctermfg=fg ctermbg=236 guifg=fg guibg=#2e3440 guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi Type ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=30 ctermbg=NONE guifg=#009688 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=242 guifg=NONE guibg=#6c7079 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=231 ctermbg=242 guifg=#fbfbfb guibg=#6c7079 guisp=NONE cterm=NONE,bold gui=NONE,bold
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
  hi NormalMode ctermfg=252 ctermbg=236 guifg=#d3d3d3 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=74 ctermbg=236 guifg=#7ab1cc guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=30 ctermbg=236 guifg=#009688 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=228 ctermbg=236 guifg=#ffff80 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=98 ctermbg=236 guifg=#a14cc9 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=228 ctermbg=236 guifg=#ffff80 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  let g:terminal_ansi_colors = [
        \ '#2e3440',
        \ '#ff4d4d',
        \ '#47b36b',
        \ '#ffff80',
        \ '#7ab1cc',
        \ '#a14cc9',
        \ '#009688',
        \ '#fbfbfb',
        \ '#2e3440',
        \ '#ff4d4d',
        \ '#47b36b',
        \ '#ffff80',
        \ '#7ab1cc',
        \ '#a14cc9',
        \ '#009688',
        \ '#d3d3d3'
        \ ]
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=238 ctermbg=255 guifg=#424853 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
  finish
endif

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
hi Conceal ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebebeb guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=233 ctermbg=158 guifg=#141414 guibg=#b3ffcc guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=233 ctermbg=153 guifg=#141414 guibg=#afc3d7 guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=233 ctermbg=210 guifg=#141414 guibg=#ff9999 guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=233 ctermbg=158 guifg=#141414 guibg=#b3ffcc guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=231 ctermbg=NONE guifg=#fbfbfb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=231 ctermbg=124 guifg=#fbfbfb guibg=#b72e2e guisp=NONE cterm=NONE gui=NONE
hi! link ErrorMsg Error
hi Folded ctermfg=242 ctermbg=255 guifg=#696969 guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=222 ctermbg=16 guifg=#ffd699 guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi LineNr ctermfg=250 ctermbg=255 guifg=#bdbdbd guibg=#ebebeb guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d3d3d3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=35 ctermbg=NONE guifg=#47b36b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=248 ctermbg=NONE guifg=#a8a8a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=236 ctermbg=252 guifg=#333333 guibg=#d3d3d3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d3d3d3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=239 guifg=#ebebeb guibg=#505050 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=248 guifg=NONE guibg=#a8a8a8 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=172 ctermbg=NONE guifg=#cc7a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=222 ctermbg=16 guifg=#ffd699 guibg=#000000 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=248 ctermbg=NONE guifg=#a8a8a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=124 ctermbg=NONE guifg=#b72e2e guibg=NONE guisp=#b72e2e cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=#7ab1cc cterm=NONE,underline gui=NONE,italic,undercurl
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
hi WildMenu ctermfg=74 ctermbg=252 guifg=#7ab1cc guibg=#d3d3d3 guisp=NONE cterm=NONE,bold gui=NONE,bold
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
hi Function ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
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
hi Underlined ctermfg=74 ctermbg=NONE guifg=#7ab1cc guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
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
hi InsertMode ctermfg=74 ctermbg=231 guifg=#7ab1cc guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=30 ctermbg=231 guifg=#009688 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=208 ctermbg=231 guifg=#ff9900 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=133 ctermbg=231 guifg=#ab47bc guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=208 ctermbg=231 guifg=#ff9900 guibg=#fbfbfb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
let g:terminal_ansi_colors = [
      \ '#fbfbfb',
      \ '#b72e2e',
      \ '#47b36b',
      \ '#ff9900',
      \ '#7ab1cc',
      \ '#ab47bc',
      \ '#009688',
      \ '#141414',
      \ '#fbfbfb',
      \ '#b72e2e',
      \ '#47b36b',
      \ '#ff9900',
      \ '#7ab1cc',
      \ '#ab47bc',
      \ '#009688',
      \ '#505050'
      \ ]
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
" Color: blue                 #7ab1cc     ~        Blue
" Color: brightblue           #afc3d7     ~        LightBlue
" Color: darkblue             #266280     ~        DarkBlue
" Color: magenta              #ab47bc     ~        Magenta
" Color: brightmagenta        #d1c4e9     ~        LightMagenta
" Color: darkmagenta          #4527a0     ~        DarkMagenta
" Color: cyan                 #009688     ~        Cyan
" Color: brightcyan           #b2dfdb     ~        LightCyan
" Color: darkcyan             #00695c     ~        DarkCyan
" Color: white                #dcdcdc     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"   Normal       fg1           none
"   CursorLineNr yellow        none
"   FoldColumn   brightblack   none
"   SignColumn   fg2           none
"   VertSplit    bg3           none
"   Normal       fg1           bg0
"   CursorLineNr yellow        bg1
"   FoldColumn   brightblack   bg1
"   SignColumn   fg2           bg1
"   VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none         bg1     bold
" DiffAdd                          fg0          brightgreen
" DiffChange                       fg0          brightblue
" DiffDelete                       fg0          brightred
" DiffText                         fg0          brightgreen
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
" PmenuSel                         bg1          fg2    bold
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
" Color: bg0 #2e3440 ~
" Color: bg1 #424853 ~
" Color: bg2 #575c66 ~
" Color: bg3 #6c7079 ~
" Color: bg4 #81858c ~
" Color: black                #000000     ~        Black
" Color: brightblack          #696969     ~        DimGray
" Color: red                  #ff4d4d     ~        Red
" Color: brightred            #d66363     ~        LightRed
" Color: darkred              #b30000     ~        DarkRed
" Color: green                #47b36b     ~        Green
" Color: brightgreen          #4c8c6c     ~        LightGreen
" Color: darkgreen            #268044     ~        DarkGreen
" Color: yellow               #ffff80     ~        Yellow
" Color: brightyellow         #ffffaf     ~        LightYellow
" Color: darkyellow           #ffea00     ~        DarkYellow
" Color: blue                 #7ab1cc     ~        Blue
" Color: brightblue           #5f87af     ~        LightBlue
" Color: darkblue             #266280     ~        DarkBlue
" Color: magenta              #a14cc9     ~        Magenta
" Color: brightmagenta        #bc7fd8     ~        LightMagenta
" Color: darkmagenta          #4527a0     ~        DarkMagenta
" Color: cyan                 #009688     ~        Cyan
" Color: brightcyan           #b2dfdb     ~        LightCyan
" Color: darkcyan             #00695c     ~        DarkCyan
" Color: white                #dcdcdc     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"   Normal       fg1           none
"   CursorLineNr yellow        none
"   FoldColumn   brightblack   none
"   SignColumn   fg2           none
"   VertSplit    bg3           none
"   Normal       fg1           bg0
"   CursorLineNr yellow        bg1
"   FoldColumn   brightblack   bg1
"   SignColumn   fg2           bg1
"   VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       none         bg1     bold
" DiffAdd                          fg0          brightgreen
" DiffChange                       fg0          brightblue
" DiffDelete                       fg0          brightred
" DiffText                         fg0          brightgreen
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
" PmenuSel                         bg1          fg2    bold
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
