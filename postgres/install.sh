Install
  apt-get install postgresql postgresql-contrib libpq-dev -y

  psql -V 

Configure PostgreSQL to start up upon server boot.
  update-rc.d postgresql enable

Start PostgreSQL.
  service postgresql start

start the database server using:
  /usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start

login
  # two steps
  # su - postgres, then run psql
  sudo -u postgres psql

Display
  \?: show all psql commands.
  \h sql-command: show syntax on SQL command.
  \c dbname [username]: Connect to database, with an optional username (or \connect).

  Display Commands: You can append + to show more details.
  \l: List all database (or \list).
  \d: Display all tables, indexes, views, and sequences.
  \dt: Display all tables.
  \di: Display all indexes.
  \dv: Display all views.
  \ds: Display all sequences.
  \dT: Display all types.
  \dS: Display all system tables.
  \du: Display all users.
  \x auto|on|off: Toggle|On|Off expanded output mode.
