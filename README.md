camunda-docker
==============

Dockerfile for running Camunda

This Dockerfile is based on `torstenek/camunda` image. It was easier to update this image (although no Dockerfile exists for it), rather than build a Dockerfile from scratch.

In order to run Camunda:

`docker run -i -p 3001:8080 -t nonsense/camunda-7.2.0-alpha4`

In order to inspect the running docker container:

`docker-enter $DOCKER_INSTANCE_ID`
