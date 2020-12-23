" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = { 'down':'~30%'}

map <leader>t :Files<CR>
nnoremap <leader>r :Rg<CR>
command! -bang -nargs=? -complet=dir Files call fzf#vim#files(<q-args>, {} , 0)

" Get text in files with Rg
command! -bang -nargs=* Rg
   \ call fzf#vim#grep(
   \   "rg --column --line-number --no-heading --color=always --smart-case --glob '!.git/**' ".shellescape(<q-args>),
   \ 1, fzf#vim#with_preview(), <bang>0)


