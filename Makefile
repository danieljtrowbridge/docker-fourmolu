TAG = latest
VERSION = 0.12.0.0

DOCKERFILE = Dockerfile.$(TAG)
INSTALLCMD = RUN cabal install fourmolu-$(VERSION)

$(DOCKERFILE):
	echo "FROM haskell:$(TAG)" > $(DOCKERFILE)
	echo "RUN cabal update" >> $(DOCKERFILE)
	echo "$(INSTALLCMD)" >> $(DOCKERFILE)
