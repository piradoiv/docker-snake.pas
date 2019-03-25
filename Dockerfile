FROM ubuntu:bionic

ADD build.sh /build.sh
RUN sh /build.sh

ENTRYPOINT /snake
