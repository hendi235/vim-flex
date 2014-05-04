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
    let b:match_ignorecase=0
" Use these template if ignorecase is enabled
"    let b:match_words=
"    \ '\%(^\s*\)\@<=\<if\>.*\<then\>\s*$:\%(^\s*\)\@<=\<else\>:\%(^\s*\)\@<=\<elsif\>:\%(^\s*\)\@<=\<end\>\s\+\<if\>,' .
"    \ '\%(^\s*\)\@<=\<while\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<while\>,' .
"    \ '\%(^\s*\)\@<=\<switch\>.*\<equals\>:\%(^\s*\)\@<=\<end\>\s\+\<switch\>,' .
"    \ '\%(^\s*\)\@<=\<case\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<case\>,' .
"    \ '\%(^\s*\)\@<=\<special\>\s\+\<cases\>:\%(^\s*\)\@<=\<end\>\s\+\<special\>\s\+\<cases\>,' .
"    \ '\%(^\s*\)\@<=\<on\>.*\<do\>:\%(^\s*\)\@<=\<end\>\s\+\<on\>,' .
"    \ '\%(^\s*\)\@<=\<enum\>:\%(^\s*\)\@<=\<end\>\s\<enum\>,' .
"    \ '\%(^\s*\)\@<=\<with\>:\%(^\s*\)\@<=\<end\>\s\<with\>,'

" Use these template if ignorecase is disabled
    let b:match_words='\<IF\>.*\<THEN\>:\<ELSE\>:\<ELSIF\>:\<END IF\>,'
    \ . '\<WHILE\>.*\<DO\>:\<CONTINUE\>:\<BREAK\>:\<END WHILE\>,'
    \ . '\<SWITCH\>:\<END SWITCH\>,'
    \ . '\<CASE\>:\<END CASE\>,'
    \ . '\<SPECIAL CASES\>:\<END SPECIAL CASES\>,'
    \ . '\<ON\>:\<END ON\>,'
    \ . '\<ENUM\>:\<END ENUM\>,'
    \ . '\<WITH\>:\<END WITH\>,'
    \ . '\<DEFAULT\>:\<END DEFAULT\>,'

endif


"    \ '\%(^\s*\)\@<=\<switch\>.*\<equals\>:\%(^\s*\)\@<=\<case\>:\%(^\s*\)\@<=\<end\>\s\+\<case\>:\%(^\s*\)\@<=\<end\>\s\+\<switch\>,' .

" ctrlp support
" Assuming that ctrlp is always in our toolbox, here are custom ctrlp setting
" for working in FLEX
" MRU mode is case-unsensitive
"let g:ctrlp_mruf_case_sensitive = 0
" end ctrlp

" I want ctrlp to search file case-insensitive, so disable smartcase search
" (smartcase is enabled in .vimrc).
" Because Flex exports subroutines name from logic all in lowercase
"set smartcase
"set ignorecase

let &cpo = s:cpo_save
unlet s:cpo_save
