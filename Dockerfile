FROM ubuntu:14.04

MAINTAINER Pedro Cuadra <pjcuadra@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y 

RUN apt-get install -y vim

RUN apt-get update && \
    apt-get install -y transmission-daemon

ADD files /etc/transmission-daemon

EXPOSE 9091

CMD exec /etc/transmission-daemon/transmission.run

USER debian-transmission
