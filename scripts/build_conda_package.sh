#!/bin/bash

PYTHON_VERSION=$1

CHANNELS="-c dppy/label/dev -c intel -c defaults --override-channels"
VERSIONS="--python $PYTHON_VERSION"
TEST="--no-test"

conda build \
  $TEST \
  $VERSIONS \
  $CHANNELS \
  conda-recipe
