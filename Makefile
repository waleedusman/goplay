SHELL := /bin/bash
TOP_DIR := $(shell pwd)

.PHONY: init
	go get -u golang.org/x/lint/golint

.PHONY: test
test:
	go test ./...

.PHONY: build
build: test
	go fmt ./...
	go build

.PHONY: run
run: build
	./goplay

# .PHONY: deploy
# deploy:
