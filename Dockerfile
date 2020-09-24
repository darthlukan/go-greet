FROM registry.access.redhat.com/ubi8/go-toolset

USER nobody

ADD build/greet /usr/bin/greet
