TAG = latest
VERSION = 0.13.1.0

DOCKERFILE = Dockerfile.$(TAG)

$(DOCKERFILE): Dockerfile.template
	cp Dockerfile.template $(DOCKERFILE)
	sed -e "s/TAG/$(TAG)/;s/VERSION/$(VERSION)/" -i $(DOCKERFILE)
