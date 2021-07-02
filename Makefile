BINARY := greet
VERSION := v0.0.4

.PHONY: all
all: build container

.PHONY: build
build:
	mkdir -p build
	GOOS=linux GOARCH=amd64 go build -o build/$(BINARY)

.PHONY: container
container: build
	podman build -f ./Dockerfile -t quay.io/btomlins/greet:$(VERSION)
	podman tag quay.io/btomlins/greet:$(VERSION) quay.io/btomlins/greet:latest
	podman push quay.io/btomlins/greet:$(VERSION)
	podman push quay.io/btomlins/greet:latest

.PHONY: clean
clean:
	rm -rf ./build
