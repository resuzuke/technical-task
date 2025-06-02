#!/bin/bash
set -euo pipefail

export TAG="$(git describe --tags --always)"

envsubst < deploy.yaml | kubectl apply -f -
