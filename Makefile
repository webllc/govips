all: deps build test

deps: FORCE
	CGO_ENABLED=0 go get ./...

build: FORCE
	CGO_ENABLED=0 go build ./vips

test: FORCE
	CGO_ENABLED=0 go test -v ./...

FORCE:

