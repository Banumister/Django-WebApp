FROM ubuntu
WORKDIR /app

COPY requirements.txt /app
COPY django_web_app /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd django_web_app

#ENTRYPOINT['python3']
#CMD ["manage.py",'runserver', '0.0.0:8001']
