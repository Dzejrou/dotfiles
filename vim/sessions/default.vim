" ~/dotfiles/vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 07 August 2017 at 21:59:37.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'base16-ir-black' | colorscheme base16-ir-black | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/dzemu
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1634 src/cpus/mcs6502.rs
badd +4 src/mems/ram.rs
badd +63 src/inst/mcs6502.rs
badd +3 src/lib.rs
badd +1 src/dzemu.rs
badd +1 src/inst/mod.rs
badd +0 src/cpus/mod.rs
badd +9 src/mems/mod.rs
badd +0 src/mems/rom.rs
badd +0 src/util.rs
argglobal
silent! argdel *
set stal=2
edit src/cpus/mod.rs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 32 + 73) / 146)
exe '2resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 67 + 73) / 146)
exe '3resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 45 + 73) / 146)
exe '4resize ' . ((&lines * 29 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 113 + 73) / 146)
argglobal
enew
" file NERD_tree_6
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((7 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
argglobal
edit src/inst/mcs6502.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 63 - ((8 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
63
normal! 0
wincmd w
argglobal
edit src/cpus/mcs6502.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1634 - ((13 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1634
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 32 + 73) / 146)
exe '2resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 67 + 73) / 146)
exe '3resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 45 + 73) / 146)
exe '4resize ' . ((&lines * 29 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 113 + 73) / 146)
tabedit src/mems/mod.rs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 35 + 73) / 146)
exe '2resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 55 + 73) / 146)
exe '3resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 54 + 73) / 146)
exe '4resize ' . ((&lines * 29 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 110 + 73) / 146)
argglobal
enew
" file NERD_tree_7
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((7 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 05|
wincmd w
argglobal
edit src/mems/rom.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
wincmd w
argglobal
edit src/mems/ram.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((2 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 35 + 73) / 146)
exe '2resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 55 + 73) / 146)
exe '3resize ' . ((&lines * 9 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 54 + 73) / 146)
exe '4resize ' . ((&lines * 29 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 110 + 73) / 146)
tabedit src/util.rs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 35 + 73) / 146)
exe '2resize ' . ((&lines * 11 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 110 + 73) / 146)
exe '3resize ' . ((&lines * 27 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 110 + 73) / 146)
argglobal
enew
" file NERD_tree_8
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((8 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 09|
wincmd w
argglobal
edit src/dzemu.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 35 + 73) / 146)
exe '2resize ' . ((&lines * 11 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 110 + 73) / 146)
exe '3resize ' . ((&lines * 27 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 110 + 73) / 146)
tabnext 3
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/projects/dzemu
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 39|vert 1resize 32|2resize 9|vert 2resize 67|3resize 9|vert 3resize 45|4resize 29|vert 4resize 113|
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/projects/dzemu
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 39|vert 1resize 35|2resize 9|vert 2resize 55|3resize 9|vert 3resize 54|4resize 29|vert 4resize 110|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/projects/dzemu
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 39|vert 1resize 35|2resize 11|vert 2resize 110|3resize 27|vert 3resize 110|
2wincmd w
tabnext 3
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
