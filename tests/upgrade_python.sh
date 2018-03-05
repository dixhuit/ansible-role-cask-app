#!/bin/bash
if [ "${TRAVIS_OSX_IMAGE}" = "xcode8.3" ]; then
  brew update
  brew upgrade python
fi
