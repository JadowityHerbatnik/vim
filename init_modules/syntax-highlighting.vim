au! BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*/nginx.conf* set filetype=nginx

  autocmd BufEnter *.{js,jsx,ts,tsx,css,scss} :syntax sync fromstart
  autocmd BufLeave *.{js,jsx,ts,tsx,css,scss} :syntax sync clear
