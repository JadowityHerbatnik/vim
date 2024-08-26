" Shell scripits shebang
	inoremap <leader>she  #!/usr/bin/sh<CR>
" Javascript
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>p console.log()<Left>

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>fori for(let i=0; i<<++>; i++){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>forj for(let j=0; j<<++>; j++){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>if if (<++>){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>el if (<++>){<CR><++><CR>} else if (<++>) {<CR><++><CR>}<Up><Up><Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>func function <++>(<++>){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>arr (<++>) => <++><Esc>0/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>imp import <++> from "<++>";<Esc>I

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>di dispatch( { type: "" } )<Esc>F"i
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>ud const dispatch = useDispatch()<Esc>F(i
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>us const <++> = useSelector(makeSelect<++>())<Esc>/<++><Enter>"_c4l


	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>sf ${ ( { } ) => <++>}<Esc>F{a

	autocmd FileType vue,javascript,typescriptreact,typescript nnoremap <leader>es <Esc>O// eslint-disable-next-line no-undef<Esc><Down>

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>it it('', () => {<CR><++><CR>});<Esc><Up><Up>0f'a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>de describe('', () => {<CR><++><CR>});<Esc><Up><Up>0f'a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>ex expect().<++><Esc>F(a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>scr screen.getByRole('', {<++>})<Esc>F'i
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>scd screen.debug()

	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>sn saga.next().value<Esc>F(a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>yp yield put({ type: })<Esc>F:a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>yt yield take({ type: })<Esc>F:a
	autocmd FileType vue,javascript,typescriptreact,typescript inoremap <leader>yc yield call()<Esc>i

  " propName={propName}
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>pr <Esc>yiWEa={}<Left><Esc>p
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>tr <Translate {...messages.} /><Esc>F}i
