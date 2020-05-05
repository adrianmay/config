set nocompatible
set mouse=
let g:haddock_browser="/usr/bin/firefox"
let maplocalleader=","
syntax on
filetype plugin on
"set ofu=syntaxcomplete#Complete
filetype plugin indent on
"au BufEnter *.hs compiler ghc

" errorformat=
" %*[^"]"%f"%*\D%l: %m,
" "%f"%*\D%l: %m,
" %-G%f:%l: (Each undeclared identifier is reported only once,
" %-G%f:%l: for each function it appears in.),
" %-GIn file included from %f:%l:%c:,
" %-GIn file included from %f:%l:%c\,,
" %-GIn file included from %f:%l:%c,
" %-GIn file included from %f:%l,
" %-G%*[ ]from %f:%l:%c,
" %-G%*[ ]from %f:%l:,
" %-G%*[ ]from %f:%l\,,
" %-G%*[ ]from %f:%l,
" %f:%l:%c:%m,
" %f(%l):%m,
" %f:%l:%m,
" "%f"\, line %l%*\D%c%*[^ ] %m,
" %D%*\a[%*\d]: Entering directory %*[`']%f',
" %X%*\a[%*\d]: Leaving directory %*[`']%f',
" %D%*\a: Entering directory %*[`']%f',
" %X%*\a: Leaving directory %*[`']%f',
" %DMaking %*\a in %f,
" %f|%l| %m
execute pathogen#infect()
	
set hidden
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set ruler
set nu
set ai
"set title
"set statusline+=%F
set laststatus=2
set modeline
set splitbelow
set isf+=>

" set undofile
" set undodir=~/.vim/undo/

set scrolloff=10000

set background=light
colorscheme adrian
" set background=dark
" colorscheme ad
" let g:solarized_termcolors=16
" colorscheme evening
" colorscheme bw
" colorscheme winter

" highlight Normal cterm=bold ctermbg=black
hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" Enable CursorLine
set cursorline
highlight CursorLine cterm=bold 
autocmd InsertEnter * highlight CursorLine ctermbg=darkgrey cterm=NONE 
autocmd InsertLeave * highlight CursorLine ctermbg=NONE cterm=NONE 
" autocmd InsertEnter * highlight CursorLine ctermbg=white cterm=bold
" autocmd InsertLeave * highlight CursorLine ctermbg=beige cterm=NONE
highlight MatchParen cterm=bold 
" ctermbg=Blue

let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

set cmdheight=1
 
function! s:DiffWithDisk()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffDisk call s:DiffWithDisk()

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery


autocmd FileType javascript let b:surround_45 = "/* \r */"
autocmd FileType c let b:surround_45 = "/* \r */"
autocmd FileType html let b:surround_45 = "<!-- \r -->"

" Commenting blocks of code.
autocmd FileType c,cpp,java,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python         let b:comment_leader = '# '
autocmd FileType conf,fstab             let b:comment_leader = '# '
autocmd FileType tex                    let b:comment_leader = '% '
autocmd FileType mail                   let b:comment_leader = '> '
autocmd FileType vim                    let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


imap [] []<Esc>i
imap () ()<Esc>i
imap "" ""<Esc>i
imap '' ''<Esc>i
imap {] {<CR>}<Esc>ko
nmap <INS> :set nopaste!<CR>

map <S-Tab> :wa<CR>:bnext<CR>

let g:asyncrun_open = 120
nmap <CR> :wa<CR>
nmap <Space> :wa<CR>:AsyncRun make<CR>
nmap g<Space> :wa<CR>:AsyncRun make pedantic<CR>
nmap <F6> :AsyncStop<CR>
nmap <F7> :cclose<CR>
nmap > :cn<CR>
nmap < :cp<CR>

vmap <F3> y:AsyncRun ./srcs \| xargs -d '\n' grep -wn "<C-R>""<CR>
vmap g<F3> y:AsyncRun ./srcs \| xargs -d '\n' grep -n "<C-R>""<CR>
vmap gg<F3> y:AsyncRun ./files \| xargs -d '\n' grep -n "<C-R>""<CR>

map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


map <MouseUp> <nop>
map <MouseDown> <nop>
nmap <MouseUp> <nop>
nmap <MouseDown> <nop>
imap <MouseUp> <nop>
imap <MouseDown> <nop>
vmap <MouseUp> <nop>
vmap <MouseDown> <nop>

map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
nmap <ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
imap <ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
vmap <ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>

noremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
nnoremap <ScrollWheelUp> <nop>
nnoremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelDown> <nop>
vnoremap <ScrollWheelUp> <nop>
vnoremap <ScrollWheelDown> <nop>

tnoremap <C-l> <C-W>l
tnoremap <C-h> <C-W>h
tnoremap <C-j> <C-W>j
tnoremap <C-k> <C-W>k

map <M-Esc>[62~ <nop>
map! <M-Esc>[62~ <nop>
map <M-Esc>[63~ <nop>
map! <M-Esc>[63~ <nop>
map <M-Esc>[64~ <nop>
map! <M-Esc>[64~ <nop>
map <M-Esc>[65~ <nop>
map! <M-Esc>[65~ <nop>

nmap _ :set number!

command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

let g:ConqueGdb_GdbExe = '/home/adrian.may/bin/mips-linux-gdb'

:set list lcs=tab:˲\ 
autocmd FileChangedRO * :!p4 edit %
autocmd FileType haskell setlocal ts=2 sw=2 expandtab

imap jj <Esc>
nnoremap ff :wqa<CR>
nnoremap vv :buffers<CR>:buffer<Space>

nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j
