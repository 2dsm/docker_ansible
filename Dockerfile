FROM python:3.7.2-alpine3.9

LABEL description="Linux Alpine with Ansible and SSH."
MAINTAINER "Diego Maia <diegosmaia@gmail.com>"

RUN apk update && \
    apk add --no-cache --virtual build-dependencies \
    build-base \
    libffi-dev \
    python3-dev \
    openssl-dev

RUN apk --update add bash openssh-client

RUN pip install --no-cache-dir \
    ansible \
    pywinrm

RUN apk del build-dependencies

CMD [ "ansible-playbook", "--version" ]
