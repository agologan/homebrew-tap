#!/bin/bash

# shellcheck disable=SC2312
set -eu

CURRENT=$(grep 'version ".*"' Casks/lens.rb | tr -s ' ' | cut -d ' ' -f3 | tr -d '"')
LATEST=$(curl -sL https://api.github.com/repos/agologan/lens/releases/latest | jq '.name' | tr -d 'v"')

if [[ "${CURRENT}" != "${LATEST}" ]]; then
    echo "Updating lens to v${LATEST}"
    INTEL_SHA=$(curl -sL "https://github.com/agologan/lens/releases/download/v${LATEST}/OpenLens-${LATEST}.dmg.sha256" | cut -d ' ' -f1 )
    ARM_SHA=$(curl -sL "https://github.com/agologan/lens/releases/download/v${LATEST}/OpenLens-${LATEST}-arm64.dmg.sha256" | cut -d ' ' -f1 )
    echo $INTEL_SHA
    echo $ARM_SHA
    export INTEL_SHA
    export ARM_SHA
    export VERSION="${LATEST}"
    envsubst < Casks/lens.rb.tpl > Casks/lens.rb
    git add Casks/lens.rb
    git commit -m "bump lens to ${LATEST}"
else
    echo 'Already up to date.'
fi
