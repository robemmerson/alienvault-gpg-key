#!/bin/bash

# Ubuntu builds
docker build . -f ubuntu/broken.dockerfile -t av-ubuntu-broken
docker build . -f ubuntu/working.dockerfile -t av-ubuntu-working

# Redhat builds
docker build . -f redhat/broken.dockerfile -t av-redhat-broken
docker build . -f redhat/working.dockerfile -t av-redhat-working


# Example runs - Working
#
# docker run -it --rm av-ubuntu-working && echo "\n\n" && \
# docker run -it --rm av-redhat-working

# Example runs - Broken
#
# docker run -it --rm av-ubuntu-broken && echo "\n\n" && \
# docker run -it --rm av-redhat-broken