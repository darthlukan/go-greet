BINARY := greet
VERSION := v0.1.0
GOARCH := $(shell go env GOARCH)

.PHONY: all
all: build container

.PHONY: build
build:
	mkdir -p build
	GOOS=linux go build -o build/$(BINARY)

.PHONY: container
container: build
	podman build -f ./Dockerfile -t quay.io/btomlins/greet:${GOARCH}-$(VERSION)
	podman tag quay.io/btomlins/greet:${GOARCH}-$(VERSION) quay.io/btomlins/greet:${GOARCH}-latest
	podman push quay.io/btomlins/greet:${GOARCH}-$(VERSION)
	podman push quay.io/btomlins/greet:${GOARCH}-latest

.PHONY: clean
clean:
	rm -rf ./build
