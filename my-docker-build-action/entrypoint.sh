#!/bin/sh -l

set -e

echo "🚀 Running custom Docker build action"

CONTEXT=$1
TAG=$2

if [ -z "$CONTEXT" ]; then
  CONTEXT="."
fi

if [ -z "$TAG" ]; then
  echo "❌ ERROR: No tag provided"
  exit 1
fi

echo "Building Docker image with tag: $TAG"
docker build -t "$TAG" "$CONTEXT"
