
let mapleader = " "

nnoremap <silent><c-s> <c-u>:update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>
inoremap <silent><c-s> <c-o>:update<cr>
nnoremap <C-q> :wq!<CR>
inoremap jk <Esc>
nnoremap H gT
nnoremap L gt
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

map <leader>b :Buffers<CR>
nnoremap <leader>m :Marks<CR>
noremap <Leader>+ :resize +5<CR>
noremap <Leader>- :resize -5<CR>
noremap <Leader>, :vertical:resize -5<CR>
noremap <Leader>. :vertical:resize +5<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O