#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

# Release Parameters
BASE_VERSION=0.1.4
IS_RELEASE=false

ARCH=$(go env GOARCH)

if [ $IS_RELEASE == false ]
then
  EXTRA_VERSION=snapshot-$(git rev-parse --short=7 HEAD)
  PROJECT_VERSION=$BASE_VERSION-$EXTRA_VERSION
else
  PROJECT_VERSION=$BASE_VERSION
fi

export AGENT_IMAGE_TAG=$ARCH-$PROJECT_VERSION
export NPM_PKG_TAG=$PROJECT_VERSION
