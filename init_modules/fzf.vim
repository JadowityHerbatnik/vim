nnoremap <C-p> :GFiles<CR>
nnoremap <C-F> :Ag<CR>
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 fzf#vim#with_preview({'options': '--delimiter : --nth 4..'},'up:50%'),
  \                 <bang>0)
