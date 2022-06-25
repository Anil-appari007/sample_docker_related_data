## Health Check is determined based on exit status
## As the command returns 0 means mysql is running

root@d4ce3d5c1d64:/# mysqladmin ping -h 127.0.0.1

mysqladmin: connect to server at '127.0.0.1' failed

error: 'Access denied for user 'root'@'127.0.0.1' (using password: NO)'

root@d4ce3d5c1d64:/# echo $?

0
