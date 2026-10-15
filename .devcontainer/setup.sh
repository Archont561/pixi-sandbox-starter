#!/usr/bin/env bash
# Devcontainer setup for the pixi-sandbox starter. Kept out of devcontainer.json so
# each step can be commented and the JSON stays a one-liner.
set -euo pipefail

pixi --version

# CLI tooling the pixi image does not ship with.
pixi global install git gh

# The pixi-sandbox CLI, from the Archont561 channel on prefix.dev.
pixi global install --channel https://prefix.dev/archont561/archont561 --channel conda-forge pixi-sandbox

# The project's own environment, pinned to the lockfile.
pixi install --locked
