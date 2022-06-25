## I have tried with shell script
## You can go with command simply

root@f977a31b0712:/# echo '\l;' | psql -U $POSTGRES_USER
invalid command \l;
root@f977a31b0712:/# echo $?
0

