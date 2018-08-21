set nocompatible
set mouse=
let g:haddock_browser="/usr/bin/firefox"
let maplocalleader=","
syntax on
filetype plugin on
"set ofu=syntaxcomplete#Complete
filetype plugin indent on
"au BufEnter *.hs compiler ghc

execute pathogen#infect()
	
set tabstop=2
set shiftwidth=2
set noexpandtab
set nowrap
set ruler
set nu
set ai
"set title
"set statusline+=%F
set laststatus=2
set modeline
set splitbelow

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
map <S-F5> :wa<CR>:Shell make<CR>
map <F5> :wa<CR>:make<CR>
map <F6> :wa<CR>:execute "!cabal build --ghc-options=\"-Wall\" && ./run" <CR>
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

