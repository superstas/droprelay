PROJECT_NAME := droprelay

export GOBIN :=$(PWD)/bin/
export PATH := $(GOBIN):$(PATH)

SHELL = env PATH=$(PATH) /bin/bash

default: all

./bin:
	mkdir -p ./bin

./bin/golangci-lint: | ./bin
	@echo "==> Installing golangci-lint..."
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b ./bin v1.64.7

.PHONY: all
all: tidy lint

.PHONY: lint
lint: ./bin/golangci-lint
	@echo "==> Linting $(PROJECT_NAME)..."
	golangci-lint run ./...

.PHONY: tidy
tidy:
	@echo "==> Checking dependencies of $(PROJECT_NAME)..."
	go mod tidy
