FROM docker.io/library/alpine
LABEL authors="@frie321984"

RUN apk --no-cache add bash
RUN apk --no-cache add tree
RUN adduser -D -u 1000 hera

COPY ./src/game /home/hera/.lernbash
RUN chown -R hera:hera /home/hera/

USER hera
WORKDIR /home/hera
RUN /home/hera/.lernbash/install.sh
ENTRYPOINT ["bash"]
