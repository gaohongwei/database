Install
  apt-get install postgresql postgresql-contrib

  psql -V 

Configure PostgreSQL to start up upon server boot.
  update-rc.d postgresql enable

Start PostgreSQL.
  service postgresql start

start the database server using:
  /usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start
