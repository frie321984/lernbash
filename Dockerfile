FROM docker.io/library/nginx:1.17.1-alpine
LABEL authors="@frie321984"

RUN apk --no-cache add busybox

COPY ./src/game /.lernbash

ENTRYPOINT ["ash"]
