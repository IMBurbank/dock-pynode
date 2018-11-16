ARG PYTHON=3.7
ARG NODE=8

FROM python:${PYTHON}-slim

ARG PYTHON
ARG NODE

RUN apt-get update \
    && apt-get install -yqq \
        apt-transport-https \
        curl \
        gnupg \
        wget \
    && echo "deb https://deb.nodesource.com/node_${NODE}.x stretch main" > \
        /etc/apt/sources.list.d/nodesource.list \
    && wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key \
        | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > \
        /etc/apt/sources.list.d/yarn.list \
    && wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && apt-get update \
    && apt-get install -yqq \
        nodejs \
        yarn \
    && pip install -U pip \
    && pip install pipenv \
    && npm i -g npm@^6 \
    && apt-get clean \
    && rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* 

RUN mkdir /.cache/ && chmod -R a+rwx /.cache \
    && mkdir /.config/ && chmod -R a+rwx /.config \
    && mkdir /.npm/ && chmod -R a+rwx /.npm \
    && mkdir /.yarn/ && chmod -R a+rwx /.yarn \
    && touch /.yarnrc && chmod a+rwx /.yarnrc