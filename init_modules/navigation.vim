" j/k will move virtual lines (lines that wrap)
  noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
  noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Navigate between splits (no left-right for terminal window to use <C-l> as clear)
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k

" Resize split windows
  nnoremap <silent> <A->> 5<C-w>>
  nnoremap <silent> <A-<> 5<C-w><
  nnoremap <silent> <A-+> 5<C-w>+
  nnoremap <silent> <A--> 5<C-w>-
  tnoremap <silent> <A->> <C-\><C-N>5<C-w>>
  tnoremap <silent> <A-<> <C-\><C-N>5<C-w><
  tnoremap <silent> <A-+> <C-\><C-N>5<C-w>+
  tnoremap <silent> <A--> <C-\><C-N>5<C-w>-

" Switch between tabs
  map <silent> <A-h> <Esc>:tabprevious<CR>
  map <silent> <A-l> <Esc>:tabnext<CR>

" Navigate in Insert mode
	inoremap <C-k> <Up>
	inoremap <C-j> <Down>
	inoremap <C-h> <Left>
	inoremap <C-l> <Right>

" Move lines up and down
	nnoremap <A-j> :m .+1<CR>==
	nnoremap <A-k> :m .-2<CR>==
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv

  " Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Append after the next quotation mark
	nnoremap <leader>' <Esc>f"a
	inoremap <leader>' <Esc>f"a
	nnoremap <leader>' <Esc>f'a
	inoremap <leader>' <Esc>f'a

" Append after the end of the current bracket
	nnoremap <leader>/ <Esc>%%a
	inoremap <leader>/ <Esc>%%a

" Append after the beginning of the current bracket
	nnoremap <leader>. <Esc>%a
	inoremap <leader>. <Esc>%a

" Some braces formatting
  inoremap () ()<Left>
  inoremap [] []<Left>
  inoremap {} {}<Left>
  inoremap <> <><Left>
  inoremap "" ""<Left>
  inoremap '' ''<Left>
  inoremap `` ``<Left>

