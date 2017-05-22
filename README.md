# Docker image builder
Docker image for building and pushing Docker images from a GitHub repo (by cloning it)

## Building
    docker build --rm -t medux/docker-image-builder .

## Using it
    docker pull medux/docker-image-builder

## Configuration (environment vars)

- `GITHUB_USER`: needed for cloning this user's repo.
- `GITHUB_TOKEN`: necessary to clone the repo, instead of user's password.
- `GITHUB_REPO`: the repository to be cloned and tested.
- `GITHUB_BRANCH`: which branch to be tested.
- `DOCKER_USER`: needed for login to Docker registry.
- `DOCKER_PASS`: needed for login to Docker registry.
- `DOCKER_IMAGE`: name (and tag) of image to build.

## Running it
```
docker run --rm\
  -e GITHUB_USER=[CHANGE] \
  -e GITHUB_TOKEN=[CHANGE] \
  -e GITHUB_REPO=[CHANGE] \
  -e GITHUB_BRANCH=[CHANGE] \
  -e DOCKER_USER=[CHANGE] \
  -e DOCKER_PASS=[CHANGE] \
  -e DOCKER_IMAGE=[CHANGE] \
   medux/docker-image-builder
```