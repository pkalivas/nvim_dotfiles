
let mapleader = " "

" Map leader to which_key
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
let g:which_key_sep = '→'
let g:which_key_use_floating_win = 0
" set timeoutlen=100

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


" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
      " \ 'm' : [':Marks'        , 'marks'] ,
      " \ 's' : [':Snippets'     , 'snippets'],
      " \ 'a' : [':Ag'           , 'text Ag'],


" g is for git
" let g:which_key_map.g = {
"       \ 'name' : '+git' ,
"       \ 'a' : [':Git add .'                        , 'add all'],
"       \ 'c' : [':Git commit -m "autocommit"'       , 'commit'],
"       \ 'd' : [':Git diff'                         , 'diff'],
"       \ 'G' : [':Gstatus'                          , 'status'],
"       \ 'p' : [':Git push'                         , 'push'],
"       \ 'P' : [':Git pull'                         , 'pull'],
"       \ 'r' : [':GRemove'                          , 'remove'],
"       \ 'v' : [':GV'                               , 'view commits'],
"       \ 'V' : [':GV!'                              , 'view buffer commits'],
"       \ }

      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'b' : [':Git blame'                        , 'blame'],
      " \ 'B' : [':GBrowse'                          , 'browse'],
      " \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      " \ 'g' : [':GGrep'                            , 'git grep'],
      " \ 'l' : [':Git log'                          , 'log'],
      " \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
    "   \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
    "   \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
    "   \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
    "   \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
    "   \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
    "   \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }


" t is for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'v' : [':Vista!!'                , 'tag viewer'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
