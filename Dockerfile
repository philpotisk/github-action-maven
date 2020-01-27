FROM maven:latest


COPY entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]