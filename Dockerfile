FROM maven:latest

RUN apt-get -y update && \
    apt-get install -y --no-install-recommends software-properties-common gnupg libsodium-dev

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
