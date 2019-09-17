FROM python:3.7-alpine

WORKDIR /tmp
COPY ./requirements.txt /tmp
RUN apk update && apk upgrade && apk add jq
RUN pip install --no-cache-dir -r /tmp/requirements.txt
