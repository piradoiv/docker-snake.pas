FROM ubuntu:bionic

# ADD build.sh /build.sh
# RUN sh /build.sh

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq git fpc

# Build
RUN git clone –depth 1 https://github.com/piradoiv/snake.pas.git /snake.pas
RUN cd /snake.pas && make
RUN mv /snake.pas/snake /snake

ENTRYPOINT /snake
