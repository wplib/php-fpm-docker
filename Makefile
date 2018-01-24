#
# Makefile for Docker
# 

VERSIONS = 5.6 7.0 7.1

BASEDIR = $(shell pwd)

.PHONY: build push release clean list

################################################################################
# Image related commands.

build:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

push:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

release:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

clean:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)

list:
	$(foreach ver,$(VERSIONS), cd $(BASEDIR)/$(ver); make $@;)


################################################################################
default: build

