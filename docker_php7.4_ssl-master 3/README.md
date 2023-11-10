Docker
===========

### Docker

How to build, start and stop, connect to container etc:

```
make help
```

./docker/db/mounted_db is a mounted in dc.db:/var/www/db, so if you want upload sql.sql in your DB:

```
make exec dc=db
cd /var/www/db
mysql -u root -p Database < sql.sql
```
