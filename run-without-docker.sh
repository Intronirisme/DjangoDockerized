#!/bin/bash

source venv/bin/activate
source local-development.env

cd app/
python manage.py runserver

deactivate