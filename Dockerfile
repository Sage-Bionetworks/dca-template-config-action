# Container image that runs your code
FROM ghcr.io/sage-bionetworks/data_curator:24.3.1-beta.1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY script.R /script.R

USER root

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
