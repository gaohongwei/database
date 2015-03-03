use mysql
select user,host,password from user;
show grants for 'root'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD 'password' WITH GRANT OPTION ;
flush previleges; 
