
let mapleader = " "

" Map leader to which_key
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
let g:which_key_sep = '→'
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" set mappings 
" let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['c'] = [ ':OmniSharpGlobalCodeCheck', 'code check' ]

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
