FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

USER nobody

ADD build/greet /usr/bin/greet

ENTRYPOINT ["/usr/bin/greet", "'Hello Person!'"]
