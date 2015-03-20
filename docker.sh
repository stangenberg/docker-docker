#!/bin/sh
exec docker -d --debug=$DOCKER_DEBUG --log-level=$DOCKER_LOG_LEVEL --api-enable-cors=$DOCKER_API_CORS