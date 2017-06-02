FROM docker:stable

COPY ${PWD}/clairctl.yml ./clairctl.yml
RUN apk add --update=yes curl
RUN curl -L https://raw.githubusercontent.com/jgsqware/clairctl/master/install.sh | sh

