" Name:         Artesanal
" Description:  A Vim colorscheme with light and dark variants originally based on Material Design (now strongly modified to my likings).
" Author:       Stefan Wimmer <wimstefan@gmail.com>
" Maintainer:   Stefan Wimmer <wimstefan@gmail.com>
" Website:      https://github.com/wimstefan/vim-artesanal
" License:      Vim License (see `:help license`)
" Last Updated: Fri 11 Jan 2019 08:15:48 AM CET

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
    hi Normal ctermfg=254 ctermbg=NONE guifg=#e0e0e0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=NONE guifg=#fff176 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=59 ctermbg=NONE guifg=#575c66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=250 ctermbg=NONE guifg=#bdbdbd guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=242 ctermbg=NONE guifg=#546e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=254 ctermbg=236 guifg=#e0e0e0 guibg=#2e3440 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=228 ctermbg=238 guifg=#fff176 guibg=#37474f guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=59 ctermbg=238 guifg=#575c66 guibg=#37474f guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=250 ctermbg=238 guifg=#bdbdbd guibg=#37474f guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=242 ctermbg=236 guifg=#546e7a guibg=#2e3440 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=238 guifg=NONE guibg=#37474f guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn ColorColumn
  hi! link CursorLine ColorColumn
  hi DiffAdd ctermfg=116 ctermbg=233 guifg=#99d1c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=116 ctermbg=233 guifg=#99d1c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=153 ctermbg=233 guifg=#b2cce5 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=217 ctermbg=233 guifg=#f5b3bb guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=217 ctermbg=233 guifg=#f5b3bb guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=116 ctermbg=233 guifg=#99d1c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=236 ctermbg=NONE guifg=#2e3440 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=167 ctermbg=NONE guifg=#e84256 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
  hi! link ErrorMsg Error
  hi Folded ctermfg=242 ctermbg=238 guifg=#546e7a guibg=#37474f guisp=NONE cterm=NONE gui=NONE,italic
  hi! link IncSearch Search
  hi LineNr ctermfg=242 ctermbg=238 guifg=#546e7a guibg=#37474f guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=NONE ctermbg=240 guifg=NONE guibg=#455a64 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=36 ctermbg=NONE guifg=#00bf8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=247 ctermbg=NONE guifg=#90a4ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=254 ctermbg=240 guifg=#e0e0e0 guibg=#455a64 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=240 guifg=NONE guibg=#455a64 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=238 ctermbg=250 guifg=#37474f guibg=#bdbdbd guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=247 guifg=NONE guibg=#90a4ae guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=185 ctermbg=NONE guifg=#e5d85c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=229 ctermbg=233 guifg=#ffffa8 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=247 ctermbg=NONE guifg=#90a4ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=167 ctermbg=NONE guifg=#e84256 guibg=NONE guisp=#e84256 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=#6699cc cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=37 ctermbg=NONE guifg=#00bbcc guibg=NONE guisp=#00bbcc cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=206 ctermbg=NONE guifg=#fa75e2 guibg=NONE guisp=#fa75e2 cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=240 ctermbg=254 guifg=#455a64 guibg=#e0e0e0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=238 ctermbg=250 guifg=#37474f guibg=#bdbdbd guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=250 ctermbg=242 guifg=#bdbdbd guibg=#546e7a guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=254 ctermbg=238 guifg=#e0e0e0 guibg=#37474f guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=255 ctermbg=NONE guifg=#eaeaeb guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=NONE ctermbg=238 guifg=NONE guibg=#37474f guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#e84256 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=67 ctermbg=240 guifg=#6699cc guibg=#455a64 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link Boolean Constant
  hi! link Character Constant
  hi Comment ctermfg=247 ctermbg=NONE guifg=#9e9e9e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Conditional Statement
  hi Constant ctermfg=36 ctermbg=NONE guifg=#00bf8a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi! link Exception Statement
  hi! link Float Constant
  hi Function ctermfg=37 ctermbg=NONE guifg=#00bbcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#00bbcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi Statement ctermfg=167 ctermbg=NONE guifg=#e84256 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link StorageClass Type
  hi Special ctermfg=228 ctermbg=NONE guifg=#fff176 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link String Constant
  hi! link Structure Type
  hi! link Tag Special
  hi Todo ctermfg=37 ctermbg=NONE guifg=#00bbcc guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Type ctermfg=30 ctermbg=NONE guifg=#0095a3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=242 guifg=NONE guibg=#546e7a guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=255 ctermbg=242 guifg=#eaeaeb guibg=#546e7a guisp=NONE cterm=NONE,bold gui=NONE,bold
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
  hi NormalMode ctermfg=250 ctermbg=236 guifg=#bdbdbd guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=67 ctermbg=236 guifg=#6699cc guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=37 ctermbg=236 guifg=#00bbcc guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=228 ctermbg=236 guifg=#fff176 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=206 ctermbg=236 guifg=#fa75e2 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Warnings ctermfg=228 ctermbg=236 guifg=#fff176 guibg=#2e3440 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  let g:terminal_ansi_colors = [
        \ '#2e3440',
        \ '#e84256',
        \ '#00bf8a',
        \ '#fff176',
        \ '#6699cc',
        \ '#fa75e2',
        \ '#00bbcc',
        \ '#eaeaeb',
        \ '#2e3440',
        \ '#e84256',
        \ '#00bf8a',
        \ '#fff176',
        \ '#6699cc',
        \ '#fa75e2',
        \ '#00bbcc',
        \ '#bdbdbd'
        \ ]
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=238 ctermbg=254 guifg=#37474f guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
  finish
endif

if !has('gui_running') && get(g:, 'artesanal_transp_bg', 0)
  hi Normal ctermfg=238 ctermbg=NONE guifg=#37474f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=208 ctermbg=NONE guifg=#ff8c00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=59 ctermbg=NONE guifg=#575c66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=240 ctermbg=NONE guifg=#455a64 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=248 ctermbg=NONE guifg=#aaaaaa guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=238 ctermbg=255 guifg=#37474f guibg=#eaeaeb guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=208 ctermbg=254 guifg=#ff8c00 guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=59 ctermbg=254 guifg=#575c66 guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=240 ctermbg=254 guifg=#455a64 guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=248 ctermbg=255 guifg=#aaaaaa guibg=#eaeaeb guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=67 ctermbg=NONE guifg=#517aa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn ColorColumn
hi! link CursorLine ColorColumn
hi DiffAdd ctermfg=115 ctermbg=233 guifg=#99d6c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=115 ctermbg=233 guifg=#99d6c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=110 ctermbg=233 guifg=#a8bcd1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=217 ctermbg=233 guifg=#f5b3bb guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=217 ctermbg=233 guifg=#f5b3bb guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=115 ctermbg=233 guifg=#99d6c1 guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=67 ctermbg=NONE guifg=#517aa3 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=255 ctermbg=NONE guifg=#eaeaeb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=160 ctermbg=NONE guifg=#dc1b33 guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi! link ErrorMsg Error
hi Folded ctermfg=248 ctermbg=254 guifg=#aaaaaa guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE,italic
hi! link IncSearch Search
hi LineNr ctermfg=248 ctermbg=254 guifg=#aaaaaa guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=250 guifg=NONE guibg=#bdbdbd guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=67 ctermbg=NONE guifg=#517aa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=29 ctermbg=NONE guifg=#009966 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=242 ctermbg=NONE guifg=#707070 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=238 ctermbg=250 guifg=#37474f guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=250 guifg=NONE guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=254 ctermbg=240 guifg=#e0e0e0 guibg=#455a64 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=242 guifg=NONE guibg=#707070 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=166 ctermbg=NONE guifg=#cc7000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=215 ctermbg=233 guifg=#ffc57f guibg=#121419 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=242 ctermbg=NONE guifg=#707070 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=160 ctermbg=NONE guifg=#dc1b33 guibg=NONE guisp=#dc1b33 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=67 ctermbg=NONE guifg=#517aa3 guibg=NONE guisp=#517aa3 cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=38 ctermbg=NONE guifg=#00aacc guibg=NONE guisp=#00aacc cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=206 ctermbg=NONE guifg=#fa75e2 guibg=NONE guisp=#fa75e2 cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=250 ctermbg=238 guifg=#bdbdbd guibg=#37474f guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=254 ctermbg=240 guifg=#e0e0e0 guibg=#455a64 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine TabLineFill
hi TabLineFill ctermfg=240 ctermbg=248 guifg=#455a64 guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=238 ctermbg=254 guifg=#37474f guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=236 ctermbg=NONE guifg=#2e3440 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=NONE ctermbg=254 guifg=NONE guibg=#e0e0e0 guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=160 ctermbg=NONE guifg=#dc1b33 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=67 ctermbg=250 guifg=#517aa3 guibg=#bdbdbd guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=242 ctermbg=NONE guifg=#546e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=29 ctermbg=NONE guifg=#009966 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi Function ctermfg=38 ctermbg=NONE guifg=#00aacc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=67 ctermbg=NONE guifg=#517aa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=38 ctermbg=NONE guifg=#00aacc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=160 ctermbg=NONE guifg=#dc1b33 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi Special ctermfg=208 ctermbg=NONE guifg=#ff8c00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=38 ctermbg=NONE guifg=#00aacc guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Type ctermfg=31 ctermbg=NONE guifg=#008099 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=236 ctermbg=248 guifg=#2e3440 guibg=#aaaaaa guisp=NONE cterm=NONE,bold gui=NONE,bold
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
hi NormalMode ctermfg=240 ctermbg=255 guifg=#455a64 guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=67 ctermbg=255 guifg=#517aa3 guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=38 ctermbg=255 guifg=#00aacc guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=208 ctermbg=255 guifg=#ff8c00 guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=206 ctermbg=255 guifg=#fa75e2 guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Warnings ctermfg=208 ctermbg=255 guifg=#ff8c00 guibg=#eaeaeb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
let g:terminal_ansi_colors = [
      \ '#eaeaeb',
      \ '#dc1b33',
      \ '#009966',
      \ '#ff8c00',
      \ '#517aa3',
      \ '#fa75e2',
      \ '#00aacc',
      \ '#2e3440',
      \ '#eaeaeb',
      \ '#dc1b33',
      \ '#009966',
      \ '#ff8c00',
      \ '#517aa3',
      \ '#fa75e2',
      \ '#00aacc',
      \ '#455a64'
      \ ]
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=254 ctermbg=238 guifg=#e0e0e0 guibg=#37474f guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color: fg0 #2e3440 ~
" Color: fg1 #37474f ~
" Color: fg2 #455a64 ~
" Color: fg3 #546e7a ~
" Color: fg4 #90a4ae ~
" Color: bg0 #eaeaeb ~
" Color: bg1 #e0e0e0 ~
" Color: bg2 #bdbdbd ~
" Color: bg3 #aaaaaa ~
" Color: bg4 #707070 ~
" Color: black                #121419     ~        Black
" Color: darkgray             #575c66     ~        DarkGray
" Color: red                  #dc1b33     ~        Red
" Color: brightred            #f5b3bb     ~        LightRed
" Color: darkred              #ae1528     ~        DarkRed
" Color: green                #009966     ~        Green
" Color: brightgreen          #99d6c1     ~        LightGreen
" Color: darkgreen            #007a51     ~        DarkGreen
" Color: yellow               #ff8c00     ~        Yellow
" Color: brightyellow         #ffc57f     ~        LightYellow
" Color: darkyellow           #cc7000     ~        DarkYellow
" Color: blue                 #517aa3     ~        Blue
" Color: brightblue           #a8bcd1     ~        LightBlue
" Color: darkblue             #406182     ~        DarkBlue
" Color: magenta              #fa75e2     ~        Magenta
" Color: brightmagenta        #fc86ec     ~        LightMagenta
" Color: darkmagenta          #f844d8     ~        DarkMagenta
" Color: cyan                 #00aacc     ~        Cyan
" Color: brightcyan           #1ad9ff     ~        LightCyan
" Color: darkcyan             #008099     ~        DarkCyan
" Color: white                #eaeaeb     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"   Normal       fg1           none
"   CursorLineNr yellow        none
"   FoldColumn   darkgray      none
"   SignColumn   fg2           none
"   VertSplit    bg3           none
"   Normal       fg1           bg0
"   CursorLineNr yellow        bg1
"   FoldColumn   darkgray      bg1
"   SignColumn   fg2           bg1
"   VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> ColorColumn
" CursorLine                    -> ColorColumn
" DiffAdd                          brightgreen  black   reverse
" DiffAdded                        brightgreen  black   reverse
" DiffChange                       brightblue   black   reverse
" DiffDelete                       brightred    black   reverse
" DiffRemoved                      brightred    black   reverse
" DiffText                         brightgreen  black   reverse
" Directory                        blue         none    bold
" EndOfBuffer                      bg0          none
" Error                            red          none    t=reverse,bold g=standout,bold
" ErrorMsg                      -> Error
" Folded                           bg3          bg1     g=italic
" IncSearch                     -> Search
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
" Boolean                       -> Constant
" Character                     -> Constant
" Comment                          fg3          none
" Conditional                   -> Statement
" Constant                         green        none
" Define                        -> PreProc
" Debug                         -> Special
" Delimiter                     -> Special
" Exception                     -> Statement
" Float                         -> Constant
" Function                         cyan         none
" Identifier                       blue         none
" Ignore                           fg           none
" Include                       -> PreProc
" Keyword                       -> Statement
" Label                         -> Statement
" Macro                         -> PreProc
" Number                        -> Constant
" Operator                      -> Statement
" PreCondit                     -> PreProc
" PreProc                          cyan         none
" Repeat                        -> Statement
" SpecialChar                   -> Special
" SpecialComment                -> Special
" Statement                        red          none
" StorageClass                  -> Type
" Special                          yellow       none
" String                        -> Constant
" Structure                     -> Type
" Tag                           -> Special
" Todo                             cyan         none    reverse
" Type                             darkcyan     none
" Typedef                       -> Type
" Underlined                       none         none    underline
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
" Color: fg0 #eaeaeb ~
" Color: fg1 #e0e0e0 ~
" Color: fg2 #bdbdbd ~
" Color: fg3 #9e9e9e ~
" Color: fg4 #707070 ~
" Color: bg0 #2e3440 ~
" Color: bg1 #37474f ~
" Color: bg2 #455a64 ~
" Color: bg3 #546e7a ~
" Color: bg4 #90a4ae ~
" Color: black                #121419     ~        Black
" Color: darkgray             #575c66     ~        DarkGray
" Color: red                  #e84256     ~        Red
" Color: brightred            #f5b3bb     ~        LightRed
" Color: darkred              #dc1b33     ~        DarkRed
" Color: green                #00bf8a     ~        Green
" Color: brightgreen          #99d1c1     ~        LightGreen
" Color: darkgreen            #008c65     ~        DarkGreen
" Color: yellow               #fff176     ~        Yellow
" Color: brightyellow         #ffffa8     ~        LightYellow
" Color: darkyellow           #e5d85c     ~        DarkYellow
" Color: blue                 #6699cc     ~        Blue
" Color: brightblue           #b2cce5     ~        LightBlue
" Color: darkblue             #517aa3     ~        DarkBlue
" Color: magenta              #fa75e2     ~        Magenta
" Color: brightmagenta        #fc86ec     ~        LightMagenta
" Color: darkmagenta          #f844d8     ~        DarkMagenta
" Color: cyan                 #00bbcc     ~        Cyan
" Color: brightcyan           #99eaea     ~        LightCyan
" Color: darkcyan             #0095a3     ~        DarkCyan
" Color: white                #eaeaeb     ~        Gainsboro
" Color: brightwhite          #ffffff     ~        White
"   Normal       fg1           none
"   CursorLineNr yellow        none
"   FoldColumn   darkgray      none
"   SignColumn   fg2           none
"   VertSplit    bg3           none
"   Normal       fg1           bg0
"   CursorLineNr yellow        bg1
"   FoldColumn   darkgray      bg1
"   SignColumn   fg2           bg1
"   VertSplit    bg3           bg0
" ColorColumn                      none         bg1
" Conceal                          blue         none
" Cursor                           none         none    reverse
" CursorColumn                  -> ColorColumn
" CursorLine                    -> ColorColumn
" DiffAdd                          brightgreen  black   reverse
" DiffAdded                        brightgreen  black   reverse
" DiffChange                       brightblue   black   reverse
" DiffDelete                       brightred    black   reverse
" DiffRemoved                      brightred    black   reverse
" DiffText                         brightgreen  black   reverse
" Directory                        blue         none    bold
" EndOfBuffer                      bg0          none
" Error                            red          none    t=reverse,bold g=standout,bold
" ErrorMsg                      -> Error
" Folded                           bg3          bg1     g=italic
" IncSearch                     -> Search
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
" Boolean                       -> Constant
" Character                     -> Constant
" Comment                          fg3          none
" Conditional                   -> Statement
" Constant                         green        none
" Define                        -> PreProc
" Debug                         -> Special
" Delimiter                     -> Special
" Exception                     -> Statement
" Float                         -> Constant
" Function                         cyan         none
" Identifier                       blue         none
" Ignore                           fg           none
" Include                       -> PreProc
" Keyword                       -> Statement
" Label                         -> Statement
" Macro                         -> PreProc
" Number                        -> Constant
" Operator                      -> Statement
" PreCondit                     -> PreProc
" PreProc                          cyan         none
" Repeat                        -> Statement
" SpecialChar                   -> Special
" SpecialComment                -> Special
" Statement                        red          none
" StorageClass                  -> Type
" Special                          yellow       none
" String                        -> Constant
" Structure                     -> Type
" Tag                           -> Special
" Todo                             cyan         none    reverse
" Type                             darkcyan     none
" Typedef                       -> Type
" Underlined                       none         none    underline
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
