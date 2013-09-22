" Vim filetype plugin file
" Language:	Flexible Logic (ft=flex)
" Maintainer: hendi.maulana@redknee.com
" Last Change:

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal com=sr:'\ -,mb:'\ \ ,el:'\ \ ,:'

let s:cpo_save = &cpo
set cpo&vim

" matchit support
if exists("loaded_matchit")
    let b:match_ignorecase=1
    let b:match_words=
    \ '\%(^\s*\)\@<=\<if\>.*\<then\>\s*$:\%(^\s*\)\@<=\<else\>:\%(^\s*\)\@<=\<elsif\>:\%(^\s*\)\@<=\<end\>\s\+\<if\>,' .
    \ '\%(^\s*\)\@<=\<while\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<while\>,' .
    \ '\%(^\s*\)\@<=\<switch\>.*\<equals\>:\%(^\s*\)\@<=\<end\>\s\+\<switch\>,' .
    \ '\%(^\s*\)\@<=\<case\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<case\>,' .
    \ '\%(^\s*\)\@<=\<special\>\s\+\<cases\>:\%(^\s*\)\@<=\<end\>\s\+\<special\>\s\+\<cases\>,' .
    \ '\%(^\s*\)\@<=\<on\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<on\>,' .
    \ '\%(^\s*\)\@<=\<enum\>:\%(^\s*\)\@<=\<end\>\s\<enum\>,' .
    \ '\%(^\s*\)\@<=\<with\>:\%(^\s*\)\@<=\<end\>\s\<with\>,'
endif
"    \ '\%(^\s*\)\@<=\<switch\>.*\<equals\>:\%(^\s*\)\@<=\<case\>:\%(^\s*\)\@<=\<end\>\s\+\<case\>:\%(^\s*\)\@<=\<end\>\s\+\<switch\>,' .
let &cpo = s:cpo_save
unlet s:cpo_save
