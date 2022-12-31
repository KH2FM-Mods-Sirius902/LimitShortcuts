-- Limit Shortcuts (1.2.1)

local offset = 0x56454E
-- x tr sq o
local game_version = 0x17D - offset
local shortcuts_addr = 0x5C75B8 - offset
local circle_confirm_addr = 0x8C9A5E - offset

local gl = 0x68
local jp = 0x66

local ragnarok = 0x02AB
local sonic_blade = 0x02BA
local strike_raid = 0x02C0
local ars_arcanum = 0x02BD

local x_shortcut = ragnarok
local o_shortcut = sonic_blade
local square_shortcut = strike_raid
local triangle_shortcut = ars_arcanum

function _OnInit()
    if ReadByte(game_version) ~= gl then
        shortcuts_addr = 0x5C75A8 - offset
        circle_confirm_addr = 0x8C9A6E - offset
        print('Limit Shortcuts initialized: JP')
    else
        print('Limit Shortcuts initialized: Global')
    end
end

function _OnFrame()
    -- if circle confirm is enabled
    if ReadByte(circle_confirm_addr) ~= 0 then
        WriteShort(shortcuts_addr+0, x_shortcut) -- set Limit's jump shortcut to x's shortcut
        WriteShort(shortcuts_addr+6, o_shortcut) -- set Limit's attack shortcut to o's shortcut
    else
        WriteShort(shortcuts_addr+0, o_shortcut) -- set Limit's jump shortcut to o's shortcut
        WriteShort(shortcuts_addr+6, x_shortcut) -- set Limit's attack shortcut to x's shortcut
    end

    WriteShort(shortcuts_addr+2, triangle_shortcut)
    WriteShort(shortcuts_addr+4, square_shortcut)
end
