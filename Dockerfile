FROM alpine:latest

RUN apk add --update curl docker && \
    rm -rf /var/cache/apk/*

COPY ${PWD}/.clairctl.yml ./.clairctl.yml

RUN curl -L https://raw.githubusercontent.com/jgsqware/clairctl/master/install.sh | sh
