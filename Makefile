#
# Makefile for Docker
# 

PWD := `pwd`

.PHONY: build push shell run start stop rm release

################################################################################
# Image related commands.

build: 
	cd 5.6; make build
	cd 7.0; make build
	cd 7.1; make build

push:
	cd 5.6; make push
	cd 7.0; make push
	cd 7.1; make push

release: build
	cd 5.6; make push
	cd 7.0; make push
	cd 7.1; make push

clean:
	cd 5.6; make clean
	cd 7.0; make clean
	cd 7.1; make clean

list:
	cd 5.6; make list
	cd 7.0; make list
	cd 7.1; make list


################################################################################
default: build

