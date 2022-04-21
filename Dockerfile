FROM python:3.8

RUN pip install django

RUN pip install pymysql==1.0.2


WORKDIR /usr/src/app

COPY . .

WORKDIR ./django-web

CMD ["python3", "manage.py", "runserver", "0:8000"]

EXPOSE 8000
