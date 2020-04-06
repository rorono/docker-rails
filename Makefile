COMMIT_HASH := $(shell git rev-parse --short HEAD)

build:
	@docker build \
		--tag rorono/rails:ruby-2.6.3-node-12.1.0
		./ruby-2.6.3-node-12.1.0
	@docker build \
		--tag rorono/rails:ruby-2.6.5-node-12.1.0
		./ruby-2.6.5-node-12.1.0
	@docker build \
		--tag rorono/rails:ruby-2.6.6-node-12.16.1
		./ruby-2.6.5-node-12.1.0
	@docker build \
		--tag rorono/rails:ruby-2.7.1-node-12.16.1
		./ruby-2.6.5-node-12.1.0
	@echo "build done."

push:
	@docker push rorono/rails
	@echo "push done."
