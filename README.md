# LimitShortcuts

OpenKh mod version of [Limit Shortcuts](https://www.nexusmods.com/kingdomhearts2finalmix/mods/19).

Fixes incorrect Limit Form shortcuts for Ragnarok and Sonic Blade when using O confirm. Using this script will ensure that Ragnarok always stays on X and Sonic Blade always stays on O while in Limit Form regardless of your confirm button choice just like all other versions of KH2FM. Also, by editing the script you may customize what shortcuts are on what button. For example if you wanted to put Ragnarok on Square you can change

```lua
local square_shortcut = strike_raid
```

to

```lua
local square_shortcut = ragnarok
```

## Usage

To use this script, install this mod using OpenKh with [LuaBackendHook](https://github.com/Sirius902/LuaBackend) installed.

For this script to function, the base address in LuaEngine must be configured to `0x56454E` for both the Global and Japanese version.
