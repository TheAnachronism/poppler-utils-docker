FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add poppler-utils

COPY ./convert.sh /etc/convert.sh

CMD ["/bin/sh", "/etc/convert.sh"]