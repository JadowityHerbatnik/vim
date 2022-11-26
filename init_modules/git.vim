  map <leader>gb :Git blame<CR>

  map <leader>gcd :Gvdiff!<CR>
  map <leader>gd :Gvdiffsplit<CR>
  map <leader>1 :diffget //2<CR>
  map <leader>2 :diffget //3<CR>

let g:git_messenger_always_into_popup = v:true

" this determines the delay before updating signcolumn (by vim-gitgutter
" plugin). Vim's default is 4000 which is way too slow
set updatetime=500
