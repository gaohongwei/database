Create roles
  sudo -u postgres psql
  create role dbroot with createdb login password 'dbpassword';
  create role web with createdb login password 'dbpassword';
  \du

Create database
  CREATE DATABASE  ml_development;

Create database template
  update pg_database set datistemplate=false where datname='template1';
  drop database Template1;
  create database template1 with owner=postgres encoding='UTF-8'
    lc_collate='en_US.utf8' lc_ctype='en_US.utf8' template template0;

  update pg_database set datistemplate=true where datname='template1';
