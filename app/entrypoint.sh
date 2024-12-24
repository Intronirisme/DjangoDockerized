#!/bin/bash

#python manage.py makemigrations <my_app>
python manage.py migrate


if [ "${TARGET}" == "development" ]; then
    echo "Running development server"
    python manage.py runserver 0.0.0.0:8080
elif [ "${TARGET}" == "production" ]; then
    echo "Running production server"
    python manage.py collectstatic --clear --noinput
    gunicorn backend.wsgi:application -b 0.0.0.0:8080 --workers=3
else
    echo "No deployment target declared"
    exit 1
fi