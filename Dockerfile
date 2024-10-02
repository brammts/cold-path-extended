FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive

LABEL Verden Brammts https://12paths.ru

RUN apt update
RUN apt install -y lua-sec lua-socket
RUN apt install -y luarocks
RUN apt-get install -y libssl-dev
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y luajit

COPY . .

EXPOSE 5555


ENTRYPOINT ["/usr/bin/luajit", "start.lua"]