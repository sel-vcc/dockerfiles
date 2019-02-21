REPO = slarkin
VERSION := $(shell date -u +"%Y%m%d-%H%M")
IMAGES := $(basename $(wildcard *.dockerfile))
TARGETS := $(addprefix build-,$(IMAGES)) $(addprefix push-,$(IMAGES))

all: $(TARGETS)

build-%:
	docker build -f $*.dockerfile -t $(REPO)/$*:$(VERSION) .

push-%:
	docker push $(REPO)/$*:$(VERSION)
