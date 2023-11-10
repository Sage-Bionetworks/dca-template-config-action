# Container image that runs your code
FROM ghcr.io/sage-bionetworks/data_curator:23.11.1-beta.3

# Copies your code file from your action repository to the filesystem
WORKDIR /srv/shiny-server/app
COPY entrypoint.sh entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["entrypoint.sh"]
