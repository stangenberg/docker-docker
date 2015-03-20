# Dockerˆ2

This runs [Docker][DOCKER] inside [Docker][DOCKER].

Dockerhub: [thstangenberg/docker][dockerhub]


## Features ##

- [Docker][DOCKER]


## Exposed volumes ##

- `/var/lib/docker` - docker files


## Exposed ports ##

- 22 / SSH 
- 2375 / Docker


## Environment Variables

- DOCKER_DEBUG - Enable docker debug mode, valid options (true, false), default is false
- DOCKER_API_CORS - Enable docker CORS headers in the remote API, valid options (true, false), default is false
- DOCKER_LOG_LEVEL - Set the docker logging level, valid options (debug, info, warn, error, fatal), default is info


## Usage ##

This container runs docker inside docker. It's required to run with the `--privileged` option.

`docker run --name docker --privileged thstangenberg/docker`


## Build 

Make is used as build system.

- `make` / starts normal docker build.
- `make run` / build and run the container. This uses `imagename` as container name and automatically stops a running container with an equal name beforehand. 
- `make bash` /  build, run the container and start a bash prompt.
- `make ncbuild` / normal build without using the docker cache ( --no-cache ).

[Docker Build Reference https://docs.docker.com/reference/builder/](https://docs.docker.com/reference/builder/)


## License ##

[Published under the MIT License][LICENSE]

[DOCKER]: http://www.docker.com
[DOCKERHUB]: https://hub.docker.com/u/thstangenberg/imagename
[LICENSE]: https://bitbucket.org/thstangenberg/docker-baseimage/src/master/LICENSE.md "Published under the MIT License"