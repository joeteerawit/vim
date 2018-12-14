au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*.conf if &ft == '' | setfiletype nginx | endif
au BufNewFile,BufRead *.groovy,Jenkinsfile  setf groovy
