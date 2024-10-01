FROM ubuntu:20.04
ENV DEBIAN_FRONTEND = noninteractive

LABEL maintainer "https://github.com/brammts"

RUN apt update
RUN apt install -y luarocks
RUN apt install -y lua-sec
RUN apt install -y lua-socket
RUN apt install -y luajit
RUN luarocks install luautf8

COPY ./src ./server

WORKDIR /server/

CMD ["luajit", "start.lua"]
