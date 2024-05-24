.DEFAULT_GOAL := help
SHELL:=/bin/bash

#include .env
export

build:
	docker build -t test:joey --no-cache --progress=plain .
rebuild:
	docker build -t test:joey --progress=plain .
up:
	docker-compose up -d
	docker-compose logs -f
down:
	docker-compose down
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' ./Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'