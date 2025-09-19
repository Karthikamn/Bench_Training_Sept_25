#!/bin/sh
set -e

echo " Building Docker image..."
docker build -t "${INPUT_IMAGE_NAME}" "${GITHUB_WORKSPACE}/${INPUT_CONTEXT_PATH}"
