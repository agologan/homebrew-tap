#!/bin/bash

# shellcheck disable=SC2312
set -eu

CASK="freelens"
BINARY="Freelens"
CURRENT=$(grep 'version ".*"' "Casks/${CASK}.rb" | tr -s ' ' | cut -d ' ' -f3 | tr -d '"')
LATEST=$(curl -sL "https://api.github.com/repos/agologan/${CASK}/releases/latest" | jq '.name' | tr -d 'v"')

if [[ "${CURRENT}" != "${LATEST}" ]]
then
  echo "Updating ${CASK} to v${LATEST}"
  INTEL_SHA=$(curl -sL "https://github.com/agologan/${CASK}/releases/download/v${LATEST}/${BINARY}-${LATEST}-macos-amd64.dmg.sha256" | cut -d ' ' -f1)
  ARM_SHA=$(curl -sL "https://github.com/agologan/${CASK}/releases/download/v${LATEST}/${BINARY}-${LATEST}-macos-arm64.dmg.sha256" | cut -d ' ' -f1)
  echo "${INTEL_SHA}"
  echo "${ARM_SHA}"
  export INTEL_SHA
  export ARM_SHA
  export VERSION="${LATEST}"
  envsubst <"Casks/${CASK}.rb.tpl" >"Casks/${CASK}.rb"
  git add Casks/"${CASK}".rb
  git commit -m "bump ${CASK} to ${LATEST}"
else
  echo 'Already up to date.'
fi
