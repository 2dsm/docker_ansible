# Pull base image
FROM python:3.7.3-alpine3.9

LABEL description="Linux Alpine with Ansible and SSH."
MAINTAINER "Diego Maia <diegosmaia@gmail.com>"

RUN apk update && \
    apk add --no-cache --virtual build-dependencies \
    build-base \
    libffi-dev \
    python3-dev \
    openssl-dev

RUN apk --update add bash openssh-client

RUN pip install --upgrade pip

RUN pip install --no-cache-dir \
    ansible \
    pywinrm

RUN apk del build-dependencies

# Default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]
