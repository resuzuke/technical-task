#!/bin/bash
set -euo pipefail

REPO=resuzuke/technical-task
TAG="$(git describe --tags --always)"

docker build -t $REPO:$TAG .
docker push $REPO:$TAG
