BINARY := greet
VERSION := v0.0.2

build:
	mkdir -p build
	GOOS=linux GOARCH=amd64 go build -o build/$(BINARY)

container: build
	podman -f Dockerfile -t quay.io/btomlins/greet:$(VERSION)
	podman tag quay.io/btomlins/greet:$(VERSION) quay.io/btomlins/greet:latest
	podman push quay.io/btomlins/greet:$(VERSION)
	podman push quay.io/btomlins/greet:latest

clean:
	rm -rf ./build
