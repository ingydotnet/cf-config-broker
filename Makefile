BUILD_DIR=build/src/github.com/ingydotnet/cf-config-broker
default: help

help:
	@echo 'Makefile targets: help all build run'

all:	build run

run:
	@echo "Launching at http://localhost:3000/"
	./cf-config-broker -config=cf-config-broker.json

.PHONY: build
build:
	mkdir -p $(BUILD_DIR)
	cp -r config main.go $(BUILD_DIR)/
	GOPATH=$(PWD)/build GOBIN=$(PWD) go get
	GOPATH=$(PWD)/build GOBIN=$(PWD) go install

clean:
	rm -fr build cf-config-broker
