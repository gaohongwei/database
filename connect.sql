dbrootroot

Connect/default login
  mysql is using by default the UNIX auth_socket plugin.
  mysql -uroot # not working
  sudo mysql -uroot # working
    USE mysql;
    SELECT User, Host, plugin FROM mysql.user;
  +------------------+-----------+-----------------------+
  | User             | Host      | plugin                |
  +------------------+-----------+-----------------------+
  | root             | localhost | auth_socket           |
  | mysql.session    | localhost | mysql_native_password |
  | mysql.sys        | localhost | mysql_native_password |
  | debian-sys-maint | localhost | mysql_native_password |
  +------------------+-----------+-----------------------+

Use password authentication
    UPDATE user SET plugin='mysql_native_password' WHERE User='root';
    UPDATE user SET plugin='auth_socket' WHERE User='root';
    FLUSH PRIVILEGES;
    exit;
  service mysql restart

Grant
    GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
    FLUSH PRIVILEGES;
    exit;
  service mysql restart

Create user
  CREATE USER 'root'@'localhost' IDENTIFIED BY '';
  select user,host,plugin from user;
  show grants for 'root'@'localhost';
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';

Reset password
  SET PASSWORD FOR 'root'@'%' =  PASSWORD('root');
  select @pwd :=password('root');
  select @pwd;
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD 'password' WITH GRANT OPTION ;
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD @pwd WITH GRANT OPTION ;
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION ;
  flush previleges;
