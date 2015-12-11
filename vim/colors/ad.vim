
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set term=xterm-256color
let g:colors_name="adrians_colourscheme"

let save_cpo = &cpo
set cpo&vim


hi IncSearch  ctermfg=white ctermbg=black cterm=NONE
hi WildMenu  ctermfg=white ctermbg=black cterm=NONE
hi SignColumn  ctermfg=white ctermbg=black cterm=NONE
hi SpecialComment  ctermfg=white ctermbg=black cterm=NONE
hi Typedef  ctermfg=white ctermbg=black cterm=NONE
hi Title  ctermfg=white ctermbg=black cterm=NONE
hi Folded  ctermfg=white ctermbg=black cterm=NONE
hi TabLineSel  ctermfg=white ctermbg=black cterm=NONE
hi NonText  ctermfg=white ctermbg=black cterm=NONE
hi DiffText  ctermfg=white ctermbg=black cterm=NONE
hi ErrorMsg  ctermfg=white ctermbg=black cterm=NONE
hi Debug  ctermfg=white ctermbg=black cterm=NONE
hi PMenuSbar  ctermfg=white ctermbg=black cterm=NONE
hi SpecialChar  ctermfg=white ctermbg=black cterm=NONE
hi StatusLine  ctermfg=black ctermbg=grey cterm=bold
hi StatusLineNC  ctermfg=white ctermbg=black cterm=NONE
hi PMenuSel  ctermfg=white ctermbg=black cterm=NONE
hi Search  ctermfg=white ctermbg=black cterm=NONE
hi SpellRare  ctermfg=white ctermbg=black cterm=NONE
hi Float  ctermfg=white ctermbg=black cterm=NONE
hi TabLineFill  ctermfg=white ctermbg=black cterm=NONE
hi WarningMsg  ctermfg=white ctermbg=black cterm=NONE
hi VisualNOS  ctermfg=white ctermbg=black cterm=NONE
hi DiffDelete  ctermfg=white ctermbg=black cterm=NONE
hi ModeMsg  ctermfg=white ctermbg=black cterm=NONE
hi CursorColumn  ctermfg=white ctermbg=black cterm=NONE
hi Define  ctermfg=white ctermbg=black cterm=NONE
hi FoldColumn  ctermfg=white ctermbg=black cterm=NONE
hi Visual  ctermfg=white ctermbg=black cterm=NONE
hi MoreMsg  ctermfg=white ctermbg=black cterm=NONE
hi SpellCap  ctermfg=white ctermbg=black cterm=NONE
hi VertSplit  ctermfg=white ctermbg=black cterm=NONE
hi Exception  ctermfg=white ctermbg=black cterm=NONE
hi DiffChange  ctermfg=white ctermbg=black cterm=NONE
hi Cursor  ctermfg=white ctermbg=black cterm=NONE
hi SpellLocal  ctermfg=white ctermbg=black cterm=NONE
hi PMenu  ctermfg=white ctermbg=black cterm=NONE
hi SpecialKey  ctermfg=white ctermbg=black cterm=NONE
hi Tag  ctermfg=white ctermbg=black cterm=NONE
hi PMenuThumb  ctermfg=white ctermbg=black cterm=NONE
hi MatchParen  ctermfg=white ctermbg=black cterm=NONE
hi SpellBad  ctermfg=white ctermbg=black cterm=NONE
hi Directory  ctermfg=white ctermbg=black cterm=NONE
hi DiffAdd  ctermfg=white ctermbg=black cterm=NONE
hi TabLine  ctermfg=white ctermbg=black cterm=NONE
hi cursorim  ctermfg=white ctermbg=black cterm=NONE


hi Normal                    ctermfg=blue   ctermbg=black     cterm=NONE 
hi Comment                   ctermfg=brown   ctermbg=black     cterm=NONE
hi Keyword                   ctermfg=blue   ctermbg=black     cterm=NONE 
hi Conditional               ctermfg=green    ctermbg=black     cterm=NONE
hi Repeat                    ctermfg=green    ctermbg=black     cterm=NONE
hi Label                     ctermfg=green    ctermbg=black     cterm=NONE
hi Boolean                   ctermfg=green    ctermbg=black     cterm=NONE
hi Statement                 ctermfg=green    ctermbg=black     cterm=NONE 
hi StorageClass              ctermfg=green    ctermbg=black     cterm=NONE 
hi Structure                 ctermfg=blue   ctermbg=black     cterm=NONE 
hi hsStructure                 ctermfg=blue   ctermbg=black     cterm=NONE 
hi Type                      ctermfg=green    ctermbg=black     cterm=NONE 
hi Identifier                ctermfg=blue   ctermbg=black     cterm=NONE 
hi Operator                  ctermfg=green    ctermbg=black     cterm=NONE 
hi hsOperator                  ctermfg=green    ctermbg=black     cterm=NONE 
hi hsSpecialChar                 ctermfg=green   ctermbg=black     cterm=NONE 
hi SpecialChar                 ctermfg=green   ctermbg=black     cterm=NONE 
hi hsCharacter                 ctermfg=green   ctermbg=black     cterm=NONE 
hi Delimiter                 ctermfg=blue   ctermbg=black     cterm=NONE 
hi Todo                      ctermfg=blue   ctermbg=black     cterm=NONE 
hi Error                     ctermfg=green    ctermbg=red       cterm=NONE 
hi Function                  ctermfg=blue   ctermbg=black     cterm=NONE 
hi Underlined                ctermfg=blue   ctermbg=black     cterm=NONE 
hi Ignore                    ctermfg=blue   ctermbg=black     cterm=NONE 
hi Constant                  ctermfg=yellow  ctermbg=black     cterm=NONE 
hi Number                    ctermfg=yellow  ctermbg=black     cterm=NONE 
hi Character                 ctermfg=yellow ctermbg=black cterm=NONE
hi String                    ctermfg=yellow  ctermbg=black     cterm=NONE 
hi LineNr                    ctermfg=darkgrey   ctermbg=black     cterm=NONE 
hi PreProc                   ctermfg=blue   ctermbg=black     cterm=NONE 
hi Macro                     ctermfg=blue   ctermbg=black     cterm=NONE 
hi Special                   ctermfg=blue   ctermbg=black     cterm=NONE 
hi vimIsCommand              ctermfg=blue   ctermbg=black     cterm=NONE 
hi vimSet                    ctermfg=blue   ctermbg=black     cterm=NONE 
hi CursorLine                cterm=NONE 
hi Visual ctermbg=darkgrey
hi PreCondit  ctermfg=grey ctermbg=black cterm=NONE
hi Include  ctermfg=grey ctermbg=black cterm=NONE

" " syntax highlighting groups (:help group-name)
" 
" hi Keyword      guifg=#ffffff  ctermfg=blue        guibg=#000000 ctermbg=black cterm=NONE
" hi Statement    guifg=#ffffff  ctermfg=white       guibg=#000000 ctermbg=black  gui=bold cterm=NONE 
" hi StorageClass guifg=#b0ffb0  ctermfg=white       guibg=#000000 ctermbg=black  gui=bold cterm=NONE
" hi Structure    guifg=#b0ffb0  ctermfg=white       guibg=#000000 ctermbg=black  gui=bold cterm=NONE
" hi Type         guifg=#ffffff  ctermfg=blue       guibg=#000000 ctermbg=black  gui=NONE cterm=NONE
" hi Identifier   guifg=#ffffff  ctermfg=white       guibg=#000000 ctermbg=black  gui=NONE cterm=bold
" hi Operator     guifg=#ffffff  ctermfg=white       guibg=#000000 ctermbg=black cterm=NONE
" hi Delimiter    guifg=#ffffff  ctermfg=white       guibg=#000000 ctermbg=black cterm=NONE
" hi Todo         guifg=#a00000  ctermfg=darkred     guibg=#000000 ctermbg=black  gui=bold cterm=NONE
" hi Error        guifg=#ffffff  ctermfg=white       guibg=#ff0000 ctermbg=red cterm=NONE
" hi Function     guifg=#2080ff  ctermfg=blue        guibg=#000000 ctermbg=black cterm=NONE
" hi Underlined   guifg=#80a0ff  ctermfg=cyan        guibg=#000000 ctermbg=black  gui=underline cterm=underline
" hi Constant     guifg=#00ff20  ctermfg=green       guibg=#000000 ctermbg=black cterm=NONE
" hi Number       guifg=#00ff20  ctermfg=green       guibg=#000000 ctermbg=black cterm=NONE
" hi PreProc      guifg=#00b000  ctermfg=darkgreen   guibg=#000000 ctermbg=black cterm=NONE
" hi Macro        guifg=#00b000  ctermfg=darkgreen   guibg=#000000 ctermbg=black cterm=NONE
" hi Special      guifg=#ffff00  ctermfg=yellow      guibg=#000000 ctermbg=black cterm=NONE


" basic highlight groups (:help highlight-groups)

" text

" hi Normal       guifg=#00ffff  ctermfg=red        guibg=#000000 ctermbg=black cterm=underline
" hi Folded       guifg=#c2bfa5  ctermfg=lightgray  guibg=#202020 ctermbg=black  gui=underline cterm=underline
" hi LineNr       guifg=#928c75  ctermfg=darkgray   guibg=#000000 ctermbg=black
" hi Directory    guifg=#00bbdd  ctermfg=cyan       guibg=#000000 ctermbg=black
" hi NonText      guifg=#77ff22  ctermfg=yellow     guibg=#000000 ctermbg=black  gui=bold cterm=bold
" hi SpecialKey   guifg=#559933  ctermfg=green      guibg=#000000 ctermbg=black
" hi SpellBad     guifg=NONE     ctermfg=white                    ctermbg=darkred
" hi SpellCap     guifg=NONE     ctermfg=white                    ctermbg=darkblue
" hi SpellLocal   guifg=NONE     ctermfg=black                    ctermbg=cyan
" hi SpellRare    guifg=NONE     ctermfg=white                    ctermbg=darkmagenta
" hi DiffAdd      guifg=#ffa000  ctermfg=darkred    guibg=#002830 ctermbg=black
" hi DiffChange                                     guibg=#002830 ctermbg=black
" hi DiffDelete   guifg=#b0b0b0  ctermfg=cyan       guibg=#202020 ctermbg=black  gui=bold cterm=bold
" hi DiffText     guifg=#ffa000  ctermfg=darkred    guibg=#002830 ctermbg=black  gui=NONE cterm=NONE
" 
" " borders / separators / menus
" 
" hi FoldColumn   guifg=#c8bcb9       guibg=#786d65       ctermfg=lightgray   ctermbg=darkgray  gui=bold   cterm=bold
" hi SignColumn   guifg=#c8bcb9       guibg=#786d65       ctermfg=lightgray   ctermbg=darkgray  gui=bold   cterm=bold
" hi Pmenu        guifg=#000000       guibg=#a6a190       ctermfg=white       ctermbg=darkgray
" hi PmenuSel     guifg=#ffffff       guibg=#133293       ctermfg=white       ctermbg=lightblue
" hi PmenuSbar    guifg=NONE          guibg=#555555       ctermfg=black       ctermbg=black
" hi PmenuThumb   guifg=NONE          guibg=#cccccc       ctermfg=gray        ctermbg=gray
" hi StatusLine   guifg=#222222       guibg=#c2bfa5       ctermfg=darkgray    ctermbg=yellow
" hi StatusLineNC guifg=#111111       guibg=#c2bfa5       ctermfg=darkgray    ctermbg=gray
" hi WildMenu     guifg=#ffffff       guibg=#133293       ctermfg=white       ctermbg=darkblue  gui=bold   cterm=bold
" hi VertSplit    guifg=#c2bfa5       guibg=#c2bfa5       ctermfg=white       ctermbg=white
" hi TabLine      guifg=#000000       guibg=#c2bfa5       ctermfg=black       ctermbg=white
" hi TabLineFill  guifg=#000000       guibg=#c2bfa5       ctermfg=black       ctermbg=white
" hi TabLineSel   guifg=#ffffff       guibg=#133293       ctermfg=white       ctermbg=black
" 
" "hi Menu
" "hi Scrollbar
" "hi Tooltip
" 
" " cursor / dynamic / other
" 
" hi Cursor       guifg=#000000       guibg=#ffff99       ctermfg=black       ctermbg=white
" hi CursorIM     guifg=#000000       guibg=#3b3b3b       ctermfg=black       ctermbg=white       cterm=reverse
" hi CursorLine   guifg=NONE          guibg=#3b3b3b
" hi link CursorColumn CursorLine
" hi link DebugStop    CursorLine
" hi Visual       guibg=#003040       ctermbg=lightblue
" hi Search       guibg=#0080ff       ctermbg=lightblue
" hi MatchParen   guifg=NONE ctermfg=white        guibg=#3377aa ctermbg=blue
" 
" "hi IncSearch
" "hi VisualNOS
" 
" " listings / messages
" 
" hi ModeMsg      guifg=#eecc18 ctermfg=yellow
" hi Title        guifg=#dd4452 ctermfg=red       guibg=#000000 ctermbg=black  gui=bold cterm=bold
" hi Question     guifg=#66d077 ctermfg=green     guibg=#000000 ctermbg=black
" hi MoreMsg      guifg=#39d049 ctermfg=green     guibg=#000000 ctermbg=black
" hi ErrorMsg     guifg=#ffffff ctermfg=white     guibg=#ff0000 ctermbg=red    gui=bold cterm=bold
" hi WarningMsg   guifg=#ccae22 ctermfg=yellow    guibg=#000000 ctermbg=black  gui=bold cterm=bold
" 
" 
" 
" let &cpo = save_cpo
