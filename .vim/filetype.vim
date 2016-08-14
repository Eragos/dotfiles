au BufRead,BufNewFile /etc/nginx/*,/data/etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
