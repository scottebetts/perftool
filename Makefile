DOCKER_ID = `docker ps -a | awk '/perftool/ {print $$1}' | xargs`

all:
	echo $(DOCKER_ID)

up:
	docker run --name perftool -it perftool:latest /bin/zsh

down:
	docker stop perftool

clean:
	docker rm $(DOCKER_ID)

build:
	docker build -t perftool .

rebuild:
	docker image rm perftool
	docker build -t perftool .
