" Like tabdo but restore the current tab.
  function! TabDo(command)
    let currTab=tabpagenr()
    execute 'tabdo ' . a:command
    execute 'tabn ' . currTab
  endfunction
  com! -nargs=+ -complete=command Tabdo call TabDo(<q-args>)

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" ':w<CR>' is 4 key strokes, ',w' is two 1!1!!1
	map <C-s> :mksession! ~/.vim_session.vim<CR>:update<CR>

" Same for ':wq'
	" map <leader>wq :wq<CR>

" And ':q'
	map <leader>q :q<CR>

" And also ':q!'
	map <leader>Q :q!<CR>

" Reload vim
	nnoremap <leader>sv <Esc>:source ~/.vimrc<CR>
	nnoremap <leader>ss <Esc>:source ~/.vim_session.vim<CR>

" Reload all tabs
  nnoremap <leader>e <Esc>:Tabdo e<CR>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Replace all is aliased to S.
	nnoremap S :%s///gc<Left><Left><Left><Left>
