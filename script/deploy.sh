#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin"
#docker pull tobiasgrott/monolithic
#docker tag tobiasgrott/monolithic:latest ${DOCKER_LOGIN}/monolithic:latest
#docker push ${DOCKER_LOGIN}/monolithic:latest