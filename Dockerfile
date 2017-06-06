FROM docker:stable-dind

COPY ${PWD}/clairctl.yml /root/clairctl.yml
RUN apk add --update=yes curl 
RUN curl -L https://raw.githubusercontent.com/jgsqware/clairctl/master/install.sh | sh

#Create a directory for all the clairctl reports
RUN mkdir /reports
COPY ${PWD}/index.php /reports/index.php


WORKDIR /root
