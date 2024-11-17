FROM alpine:latest
RUN apk add --no-cache bash
COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh
ENTRYPOINT ["/cleanup.sh"]