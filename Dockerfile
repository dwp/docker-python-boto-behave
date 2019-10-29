FROM python:3.7-alpine

ENV USER_NAME=botobehave
ENV GROUP_NAME=botobehave

RUN apk update \
    && apk upgrade \
    && apk add jq build-base

RUN addgroup ${GROUP_NAME}
RUN adduser --system --ingroup ${GROUP_NAME} ${USER_NAME}

WORKDIR /tmp

COPY ./requirements.txt /tmp
RUN chown ${USER_NAME}:${GROUP_NAME} . -R

USER ${USER_NAME}
RUN pip install --user --no-cache-dir -r /tmp/requirements.txt
ENV PATH="/home/${USER_NAME}/.local/bin:${PATH}"
