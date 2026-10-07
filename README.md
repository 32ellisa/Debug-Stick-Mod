# Debug Stick MCPE Addon

This repository contains a Bedrock/MCPE addon layout for a custom Debug Stick item and a set of admin-only items that are normally unobtainable in Survival.

The repository is set up to be zipped into a `.mcaddon` package for Minecraft Bedrock.

## Included items

- `custom:debug_stick`
- Barrier
- Command Block
- Repeating Command Block
- Chain Command Block
- Structure Block
- Structure Void
- Bedrock
- Knowledge Book

## Quick commands

```mcfunction
/give @p custom:debug_stick 1
/give @p barrier 64
/give @p command_block 1
/give @p repeating_command_block 1
/give @p chain_command_block 1
/give @p structure_block 1
/give @p structure_void 1
/give @p bedrock 64
/give @p knowledge_book 1
```

## Build a .mcaddon

Run one of the build scripts in the `build/` folder:

- Mac/Linux: `build/create_mcaddon.sh`
- Windows PowerShell: `build/create_mcaddon.ps1`

This will create:

- `build/DebugStick.mcaddon`

## Important note about the texture

The repo includes the required resource-pack structure, but the actual texture image file must be present at:

`resource_packs/DebugStick_RP/textures/items/debug_stick.png`

You can either:

- copy a small item texture from a vanilla Minecraft resource pack, or
- draw a simple 16x16 item icon and save it as `debug_stick.png`

Once the PNG is in place, use the build script to zip everything into a `.mcaddon` file.

## Pack structure

- `behavior_packs/DebugStick_BP/manifest.json`
- `behavior_packs/DebugStick_BP/items/debug_stick.json`
- `resource_packs/DebugStick_RP/manifest.json`
- `resource_packs/DebugStick_RP/textures/item_texture.json`
- `resource_packs/DebugStick_RP/textures/items/debug_stick.png`

## Install

1. Import `build/DebugStick.mcaddon` into Minecraft Bedrock.
2. Enable the pack in your world.
3. Run the commands above.

This is a custom tool-item pack for MCPE/Bedrock, not a Java debug stick equivalent.
