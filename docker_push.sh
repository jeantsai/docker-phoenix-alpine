#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push jeantsai/phoenix-alpine
docker tag jeantsai/phoenix-alpine jeantsai/phoenix-alpine:1.0
docker push jeantsai/phoenix-alpine:1.0

