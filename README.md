# django_nginx_gunicorn_pg_python3
Docker container skeleton for building a Python 3 django container. Make sure that docker and docker-compose are installed.

## This structure produdes a skeleton docker structure for running three containers:
1. ngnix proxy (linked to python container)
2. Python:3.4 environment running gunicorn (linked to the postgres container)
3. Postgres database

#### The name of the containers defined in the docker-compose.yaml are as follows:
* proxy
* web
* db

#### Requirements in requirements.txt
* Django>=1.7
* django-environ>=0.3.0
* django-braces>=1.4.0
* django-crispy-forms>=1.4.0
* django-admin-bootstrapped>=1.6.9
* django-debug-toolbar>=1.2.1
* django-authtools>=1.0.0
* easy-thumbnails>=2.2
* psycopg2
* gunicorn

#### To build
```
docker-compose build
```
#### To run
```
docker-compose up
```

*Other useful commnads:*
```
docker-compose run web /bin/bash
docker-compose run web django-admin startproject mysite
docker-compose run web python manage.py makemigrations
docker-compose run web python manage.py migrate
docker-compose run web python manage.py syncdb
```
