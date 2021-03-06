# Greet

Author: Brian Tomlinson <darthlukan@gmail.com> | <btomlins@redhat.com>


## Description

A simple [go](https://golang.org) program that prints the first argument passed-in via the CLI.

This is meant as a simple demo application for use in other projects, such as a [Kubernetes](https://kubernetes.io) or [OpenShift](https://www.openshift.com/)
[operator](https://github.com/operator-framework/operator-sdk).


## Usage

Locally, via CLI:
```
$ make build
$ ./build/greet "Hello World\!"
>> "Hello World!"
  ... inf ...
```

Locally, as a container:
```
$ podman pull quay.io/btomlins/greet:v0.0.2
$ podman run quay.io/btomlins/greet:v0.0.2 /usr/bin/greet "Hello World\!"
>> "Hello World!"
  ... inf ...
```


## License

[MIT](https://opensource.org/licenses/MIT), see LICENSE file
