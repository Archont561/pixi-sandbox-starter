# AGENTS.md — machine instructions for this bundle

This is an **offline pixi sandbox**, not source code to merge.

- authoritative manifest: `.pixi-sandbox/manifest.json` (schema 2);
- environments: default (platform linux-64);
- verified bootstrap: `.pixi-sandbox/tools/linux-64/pixi-sandbox`; the branch root contains documentation only;
- never download tools at restore time; bundled tools are: pixi, pixi-sandbox, pixi-unpack;
- after restore, use pixi as the only entrypoint: `pixi install --frozen --offline` (or `<project>/.pixi/tools/linux-64/pixi` when user launchers were skipped) must be a no-op;
- no `.pixi/sandbox-env.sh` activation script is generated or supported.
