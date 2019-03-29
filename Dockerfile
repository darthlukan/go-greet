FROM alpine:3.9

USER nobody

ADD build/greet /usr/bin/greet
