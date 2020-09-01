" Javascript
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>p console.log()<Left>

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>fori for(let i=0; i<<++>; i++){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>forj for(let j=0; j<<++>; j++){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>if if (<++>){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>el if (<++>){<CR><++><CR>} else if (<++>) {<CR><++><CR>}<Up><Up><Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>func function <++>(<++>){<CR><++><CR>}<Up><Up><Esc>/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>arr (<++>) => <++><Esc>0/<++><Enter>"_c4l

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>imp import <++> from "<++>";<Esc>I

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>di dispatch( { type: "" } )<Esc>F"i

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>sf ${ ( { } ) => <++>}<Esc>F{a

	autocmd FileType vue,javascript,typescriptreact nnoremap <leader>es <Esc>O// eslint-disable-next-line no-undef<Esc><Down>

	autocmd FileType vue,javascript,typescriptreact inoremap <leader>it it('', () => {<CR><++><CR>});<Esc><Up><Up>0f'a
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>de describe('', () => {<CR><++><CR>});<Esc><Up><Up>0f'a
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>scr screen.getByRole('', {<++>})<Esc>F'i
	autocmd FileType vue,javascript,typescriptreact inoremap <leader>scd screen.debug()
