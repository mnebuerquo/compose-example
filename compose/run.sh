#!/bin/sh

dockerdev="$(cd "$(dirname "$0")" 2>/dev/null 1>&2 && pwd)"
docker_compose_yml="${dockerdev}/docker-compose.yml"
project=${PWD}
name="$(basename "${project}")"

export PROJECT="${project}"
export DOCKERDEV="${dockerdev}"

echo "PWD=${PWD}"
echo "PROJECT=${PROJECT}"
echo "DOCKERDEV=${DOCKERDEV}"
echo "docker_compose_yml=${docker_compose_yml}"
echo "name=${name}"

uname -v
docker -v
docker-compose -v

docker-compose \
    --file "${docker_compose_yml}" \
    --project-directory "${dockerdev}" \
    --project-name "${name}" \
    "$@"
