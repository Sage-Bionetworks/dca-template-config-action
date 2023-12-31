# Container image that runs your code
FROM ghcr.io/sage-bionetworks/data_curator:23.11.1-beta.3

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY script.R /script.R

USER root

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
