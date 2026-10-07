#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/build"
mkdir -p "$OUT_DIR"

cd "$ROOT_DIR"
rm -f "$OUT_DIR/DebugStick.mcaddon"
zip -r "$OUT_DIR/DebugStick.mcaddon" behavior_packs resource_packs

echo "Created: $OUT_DIR/DebugStick.mcaddon"
