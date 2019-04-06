Create roles
  sudo -u postgres psql
  create role dbroot with createdb login password 'dbpassword';
  create role web with createdb login password 'dbpassword';
  \du

Create database
  CREATE DATABASE  ml_development;
