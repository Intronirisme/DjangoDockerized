FROM python:3.13.0-slim-bookworm

WORKDIR /djangoapp

EXPOSE 8080/tcp

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD './entrypoint.sh'