FROM docker.io/library/nginx:1.17.1-alpine
LABEL authors="@frie321984"

RUN apk --no-cache add bash
RUN adduser -D -u 1000 hera


COPY ./src/game /home/hera/.lernbash
RUN chown -R hera:hera /home/hera/.lernbash

USER hera
WORKDIR /home/hera
ENTRYPOINT ["bash"]
