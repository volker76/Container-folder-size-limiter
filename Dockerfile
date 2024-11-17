FROM alpine:latest
RUN apk add --no-cache bash
COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh
ENV DIR=/data
ENV DIRLIMIT=999999999
ENTRYPOINT ["/cleanup.sh"]