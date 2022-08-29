" Like tabdo but restore the current tab.
  function! TabDo(command)
    let currTab=tabpagenr()
    execute 'tabdo ' . a:command
    execute 'tabn ' . currTab
  endfunction
  com! -nargs=+ -complete=command Tabdo call TabDo(<q-args>)

" Deletes all hidden buffers
if !exists("*DeleteHiddenBuffers") " Clear all hidden buffers when running
	function DeleteHiddenBuffers() " Vim with the 'hidden' option
		let tpbl=[]
		call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
		for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
			silent execute 'bwipeout' buf
		endfor
	endfunction
endif
command! DeleteHiddenBuffers call DeleteHiddenBuffers()

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" ':w<CR>' is 4 key strokes, ',w' is two 1!1!!1
	map <C-s> :update<CR>

" Reload vim
	nnoremap <leader>sv <Esc>:source ~/.vimrc<CR>
	nnoremap <leader>ss <Esc>:source ~/.vim_session.vim<CR>

" Reload all tabs
  nnoremap <leader>e <Esc>:Tabdo e<CR>

" Save all tabs
  nnoremap <leader>tu <Esc>:Tabdo :update<CR>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Replace all is aliased to S.
	nnoremap S :%s///gc<Left><Left><Left><Left>

" Toggle terminal window in horizontal split
  nnoremap <silent> <space>t     :split term://$0 <CR><C-w>Ja
  tnoremap <silent> <space>t     <C-\><C-n>ZQ

" Press Escape to stop highlighting matching patterns
	nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
