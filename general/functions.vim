
" auto spell checking for certain files 
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END
