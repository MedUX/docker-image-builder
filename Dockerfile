################################################
# Image for building and pushing Docker images #
#          medux/docker-image-builder          #
################################################

FROM jpetazzo/dind

LABEL maintainer "MedUX"
MAINTAINER MedUX <info@caseonit.com>

ENV WORK_DIR /container/workspace/
COPY entrypoint.sh $WORK_DIR
WORKDIR $WORK_DIR

ENTRYPOINT ["/usr/local/bin/wrapdocker"]
CMD ["/container/workspace/entrypoint.sh"]