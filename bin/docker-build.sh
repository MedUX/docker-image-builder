#!/usr/bin/env bash

VERSION=$1

: "${VERSION:=latest}"

docker build --rm -t medux/docker-image-builder:"$VERSION" .