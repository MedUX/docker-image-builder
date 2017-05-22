#!/usr/bin/env bash
# Entrypoint for cloning, building and pushing Docker images

set -xe

: "${GITHUB_USER?Need a GitHub username}"
: "${GITHUB_TOKEN?Need a GitHub token}"
: "${GITHUB_REPO?Need a repository name}"
: "${GITHUB_BRANCH?Need a GitHub branch}"
: "${DOCKER_USER?Need a Docker user}"
: "${DOCKER_PASS?Need a Docker pass}"
: "${DOCKER_IMAGE?Need a Docker pass}"

if [[ -z "${GITHUB_TOKEN}" ]]; then
  git clone -b "$GITHUB_BRANCH" https://github.com/"$GITHUB_USER"/"$GITHUB_REPO".git
else
  git clone -b "$GITHUB_BRANCH" https://"$GITHUB_TOKEN"@github.com/"$GITHUB_USER"/"$GITHUB_REPO".git
fi

cd $GITHUB_REPO

# Login to Docker registry
docker login -u $DOCKER_USER -p $DOCKER_PASS

# Build and push Docker images
docker build --rm -t $DOCKER_IMAGE .
docker push $DOCKER_IMAGE