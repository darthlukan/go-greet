BINARY := greet
VERSION := v0.0.1

build:
	mkdir -p build
	GOOS=linux GOARCH=amd64 go build -o build/$(BINARY)

container: build
	docker build . -t docker.io/darthlukan/greet:$(VERSION)
