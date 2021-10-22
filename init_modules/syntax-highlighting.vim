au! BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*/nginx.conf* set filetype=nginx

autocmd BufEnter *.{js,jsx,ts,tsx,css,scss} :colorscheme base16-onedark
