FROM python:3.7-alpine

WORKDIR /tmp

COPY assume-role /
COPY ./requirements.txt /tmp
RUN apk update && apk upgrade && apk add jq build-base coreutils libffi-dev
RUN pip install --no-cache-dir -r /tmp/requirements.txt
