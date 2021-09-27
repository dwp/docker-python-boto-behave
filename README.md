# docker-python-boto-behave

This repo generates a Docker Alpine python/3.7-alpine image with `boto3` and `behave` installed.

It is mainly used by AWS Concourse to run E2E tests on.

## CI

There is a Circle CI pipeline in the DWP organisation which builds and deploys the image.

## Local building

When making changes, these should always be tested locally first by running this from the root:

    docker run -it $(docker build -q .)

This will build and run a local version of this image, which you can then go in to and check it has the relevant packages installed.
