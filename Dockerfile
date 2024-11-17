FROM ubuntu:latest
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG=en_US.utf8
COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh
ENV DIR=/data
ENV DIRLIMIT=999999999
ENV timer=60
ENTRYPOINT ["/cleanup.sh"]