" Vim syntax file
" Language: colorforth-pbr (PBR variant)
" Maintainer: Philippe Brochard
" Latest Revision: 1 may 2024

" Place this file in ~/.vim/syntax/colorforth-pbr
" Add this in ~/.vimrc
" au BufRead,BufNewFile *.cf set filetype=colorforth-pbr

if exists("b:current_syntax")
  finish
endif


syn match prefix "[:^~'`]" conceal

syn match colorForthComment "\~\\.*$"
syn region colorForthBlockComment   start="(" end=")" fold contains=colorForthBlockComment

syn region colorForthDefine start=":" end=" " contains=ALL
syn region colorForthString start=/[cs]"/ end=/"/
syn region colorForthTick start="['`]" end="[:~('`^]" contains=ALL
syn region colorForthCompile start="\^" end="[:~('`\\]" contains=ALL
syn region colorForthExecute start="\~" end="[:^('`\\]" contains=ALL


let b:current_syntax = "colorforth-pbr"

hi def link colorForthComment Comment
hi def link colorForthBlockComment Comment
hi def link colorForthDefine Define
hi def link colorForthCompile Compile
hi def link colorForthExecute Execute
hi def link colorForthTick Tick
hi def link colorForthString String

hi def link prefix prefix

hi colorForthComment ctermfg=White
hi colorForthBlockComment ctermfg=White
hi colorForthDefine ctermfg=Red
hi colorForthCompile ctermfg=Green
hi colorForthExecute ctermfg=Yellow
hi colorForthTick ctermfg=Cyan
hi colorForthString ctermfg=Magenta

hi prefix ctermfg=Blue
