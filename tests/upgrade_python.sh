#!/bin/bash

# https://docs.travis-ci.com/user/customizing-the-build/#Implementing-Complex-Build-Steps

set -ev
if [ "${TRAVIS_OSX_IMAGE}" = "xcode8.3" ]; then
  # macOS version is 10.12
  # Upgrade python to avoid SSL errors when using ansible-galaxy to get roles
  # from GitHub over HTTPS.
  brew update
  brew upgrade python
fi
