#!/bin/bash

RELEASE_VERSION="$1"

if [[ $RELEASE_VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; 
then
    bosh create-release --final --version "$RELEASE_VERSION" && \
    bosh -n create-release releases/varnish/varnish-${RELEASE_VERSION}.yml --tarball releases/varnish/varnish-${RELEASE_VERSION}.tgz
else
  echo "Usage: $0 <major>.<minor>.<patch>"
fi
