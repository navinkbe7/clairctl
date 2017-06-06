# We need dind in order to run the docker commands used by clairctl
FROM docker:stable-dind

# Get the config for clairctl in place
COPY ${PWD}/clairctl.yml /root/clairctl.yml

# Install curl
RUN apk add --update=yes curl

# Install clairctl
RUN curl -L https://raw.githubusercontent.com/jgsqware/clairctl/master/install.sh | sh

# Create a directory for the reports.  Needed for use by helm chart later.
# Otherwise clairctl will create this for us.
RUN mkdir -p /reports/html

# Change workdir to /root so that the config will get picked up
WORKDIR /root