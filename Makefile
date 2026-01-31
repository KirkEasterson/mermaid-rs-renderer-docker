DOCKER_USERNAME ?= kirkeasterson
APPLICATION_NAME ?= mermaid-rs-renderer

.PHONY: build
build:
	@docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME} .

.PHONY: lint
lint:
	@hadolint Dockerfile
