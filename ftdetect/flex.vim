" my filetype file
"set verbose=9   "assist in debugging

"if exists("did_load_filetypes")
"  finish
"endif
"augroup filetypedetect
  au BufRead,BufNewFile *.fles_model setfiletype flex
"augroup END
