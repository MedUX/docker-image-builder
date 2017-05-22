#!/usr/bin/env bash

VERSION=$1

: "${VERSION:=latest}"

docker push medux/docker-image-builder:"$VERSION"