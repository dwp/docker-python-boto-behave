FROM python:3.7-alpine

WORKDIR /tmp
COPY ./requirements.txt /tmp
RUN apt-get install autoconf automake build-essential libtool
RUN pip install --no-cache-dir -r /tmp/requirements.txt
