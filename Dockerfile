FROM alpine:latest as stage1
ADD https://github.com/piradoiv/snake.pas/releases/download/1.0.0/snake-linux-x86_64.zip /
RUN unzip -q /snake-linux-x86_64.zip
RUN mv /snake-linux-x86_64 /snake

FROM scratch
COPY --from=stage1 /snake /snake
ENTRYPOINT ["/snake"]

