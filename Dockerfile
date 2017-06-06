FROM docker:stable-dind

COPY ${PWD}/clairctl.yml /root/clairctl.yml
RUN apk add --update=yes curl
RUN curl -L https://raw.githubusercontent.com/jgsqware/clairctl/master/install.sh | sh

WORKDIR /root