COMMIT_HASH := $(shell git rev-parse --short HEAD)

build:
	@docker build \
		--tag rorono/rails:ruby-2.6.3-node-12.1.0 \
		--tag rorono/rails:ruby-2.6.3-node-12.1.0-${COMMIT_HASH} \
		--tag quay.io/rorono/rails:ruby-2.6.3-node-12.1.0 \
		--tag quay.io/rorono/rails:ruby-2.6.3-node-12.1.0-${COMMIT_HASH} \
		./ruby-2.6.3-node-12.1.0
	@echo "build done."

push:
	@docker push rorono/rails
	@docker push quay.io/rorono/rails
	@echo "push done."
