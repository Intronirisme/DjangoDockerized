# DjangoDockerized
A template for serving django app in both development AND production

## Setup

1. Initialize python's virtual environment inside root folder :
```
cd DjangoDockerized/
python -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip
pip install -r app/requirements.txt
```

2. Setup you django app :
```
cd app/
python manage.py startapp myApp
```

3. Edit `backend/settings/base.py` to add your app in `INSTALLED_APP`
```
INSTALLED_APPS = [
    ...
    'myApp.apps.MyAppConfig',
]
```

4. Perform migrations if you have new Data Models
```
python manage.py makemigrations
python manage.py migrate
```

5. Run locally using `run-without-docker.sh`

6. Run using docker `docker compose -f docker-compose-development.yml up -d`