.PHONY: build
build:
	docker image build -f Dockerfile.hadoop -t esakik/hadoop:latest .

.PHONY: setup
setup:
	make remove run init

.PHONY: run
run:
	docker container run --name esakik-hadoop -d -p 50070:50070 esakik/hadoop:latest

.PHONY: init
init:
	docker container exec -it esakik-hadoop ./src/main/bash/init-hadoop.sh
	docker container exec -it esakik-hadoop /bin/bash

.PHONY: remove
remove:
	docker container stop esakik-hadoop || true && docker container rm esakik-hadoop || true
