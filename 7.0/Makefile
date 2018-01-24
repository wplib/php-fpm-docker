#
# Makefile for Docker
# 

PROJECT		?= wplib
NAME		?= php-fpm-docker
VERSION		?= 7.0.25
MAJORVERSION	?= 7.0
PORTS		?= -p 9000:9000
VOLUMES		?= --mount type=bind,source=/var/www,target=/var/www
ENV		?= 

LATEST		?= 0

IMAGE_NAME	?= $(PROJECT)/$(NAME)
CONTAINER_NAME	?= $(PROJECT)_$(NAME)_$(VERSION)


.PHONY: build push shell run start stop rm release

################################################################################
# Image related commands.

build: Dockerfile
	-docker build -t $(IMAGE_NAME):$(VERSION) --build-arg PHP_FPM_VERSION=$(VERSION) .
	-docker build -t $(IMAGE_NAME):$(MAJORVERSION) --build-arg PHP_FPM_VERSION=$(MAJORVERSION) .
ifeq ($(LATEST),1)
	docker build -t $(IMAGE_NAME):latest --build-arg PHP_FPM_VERSION=latest .
endif

push:
	-docker push $(IMAGE_NAME):$(VERSION)
	-docker push $(IMAGE_NAME):$(MAJORVERSION)
ifeq ($(LATEST),1)
	docker push $(IMAGE_NAME):latest
endif

release: build
	make push -e VERSION=$(VERSION)

clean:
	docker image rm $(IMAGE_NAME):$(VERSION)
	docker image rm $(IMAGE_NAME):$(MAJORVERSION)
ifeq ($(LATEST),1)
	docker image rm $(IMAGE_NAME):latest
endif

list:
	docker image ls $(IMAGE_NAME):$(VERSION)
	docker image ls $(IMAGE_NAME):$(MAJORVERSION)
ifeq ($(LATEST),1)
	docker image ls $(IMAGE_NAME):latest
endif


################################################################################
# Container related commands.

shell:
	docker run --rm --name $(CONTAINER_NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION) /bin/bash

run:
	docker run --rm --name $(CONTAINER_NAME) $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION)

start:
	docker run -d --name $(CONTAINER_NAME) --restart unless-stopped $(PORTS) $(VOLUMES) $(ENV) $(IMAGE_NAME):$(VERSION)

stop:
	docker stop $(CONTAINER_NAME)

rm:
	docker container rm $(CONTAINER_NAME)


################################################################################
default: build

