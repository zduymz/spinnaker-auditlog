.PHONY: default build push clean

APP = spin-auditlog

default: build

push:
	docker tag ${APP}:latest 088921319999.dkr.ecr.us-west-2.amazonaws.com/${APP}:latest
	docker push 088921319999.dkr.ecr.us-west-2.amazonaws.com/${APP}:latest

build:
	@docker build --squash --no-cache --rm -t ${APP} .

clean:
	- docker rmi `docker images -f "dangling=true" -q --no-trunc`

