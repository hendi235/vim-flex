" my filetype file
"set verbose=9   "assist in debugging

"if exists("did_load_filetypes")
"  finish
"endif
"augroup filetypedetect
  au BufNewFile,BufRead *.sl set filetype=flex
  au BufNewFile,BufRead *.dataflow set filetype=flex
  au BufRead,BufNewFile *.fles_model set filetype=flex
"augroup END
