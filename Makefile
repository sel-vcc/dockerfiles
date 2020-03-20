REPO = slarkin
ALPINE_BASE := 3.11.3
VERSION := $(shell date -u +"%Y%m%d-%H%M")
IMAGES := $(basename $(wildcard *.dockerfile))
TARGETS := $(addprefix build-,$(IMAGES)) $(addprefix push-,$(IMAGES))

all: $(TARGETS)

build-%:
	docker build . \
	  -f $*.dockerfile \
	  --build-arg ALPINE_BASE=$(ALPINE_BASE) \
	  -t $(REPO)/$*:$(VERSION)

push-%:
	docker push $(REPO)/$*:$(VERSION)
