#!/bin/bash

source venv/bin/activate

export SECRET_KEY="xk&a#nle_=9!(+z_hu*g+llh)3j^hp+ymk)i_v5zf87+mm@*+h"

export DOMAIN="localhost"
export TARGET="development"

export ALLOWED_HOSTS=".localhost, .0.0.0.0"

export DJANGO_SETTINGS_MODULE="backend.settings.local"

cd app/
python manage.py runserver

deactivate