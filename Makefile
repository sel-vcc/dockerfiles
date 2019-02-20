REPO = slarkin
VERSION := $(shell date -u +"%Y%m%d-%H%M")

all: tcpdump curl

.PHONY: tcpdump
tcpdump:
	docker build -f tcpdump/Dockerfile -t $(REPO)/tcpdump-alpine:$(VERSION) tcpdump
	docker push $(REPO)/tcpdump-alpine:$(VERSION)

.PHONY: curl
curl:
	docker build -f curl/Dockerfile -t $(REPO)/curl-alpine:$(VERSION) curl
	docker push $(REPO)/curl-alpine:$(VERSION)
