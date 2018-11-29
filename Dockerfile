FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install python python-pip -y && \
    mkdir /opt/app

COPY src/main.py /opt/app
COPY requirements.txt /opt/app

RUN pip install -r /opt/app/requirements.txt

EXPOSE 5000
COPY docker-entrypoint.sh /
ENTRYPOINT "/docker-entrypoint.sh"
