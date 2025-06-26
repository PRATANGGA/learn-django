#!/bin/sh

echo "Menunggu MySQL siap..."
while ! nc -z db 3306; do
  sleep 1
done

echo "MySQL ditemukan, menjalankan Django..."
python manage.py migrate
python manage.py runserver 0.0.0.0:8089
