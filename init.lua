
dofile_once("mods/pacifistRunStatus/files/scripts/pacifist_run_status.lua")

local pacifist_run_status_mod = ModSettingGet("pacifist_run_status.mode")

pacifist_run_is_failed=false
local pacifist_run_is_failed_frame, pacifist_run_is_failed_last_frame
local gui
local icon_path = "mods/pacifistRunStatus/files/gfx/peaceless.png"
local screen_width, screen_height = GuiGetScreenDimensions(gui)

-- local icon_size = 16
-- local margin = 10
-- local x = screen_width - icon_size - margin
-- local y = screen_height - icon_size - margin

function OnPlayerSpawned(player_entity)
    show_icon = true
end

function OnModInit()
    gui = GuiCreate()
end

function OnWorldPreUpdate()
    if pacifist_run_is_failed==false and GameGetFrameNum() % 20 == 0 then
        PacifistRunStatusTest(player_entity)
    end

    if gui == nil then
        return
    end

    GuiStartFrame(gui)

    if pacifist_run_is_failed 
    and pacifist_run_status_mod == "show" then
        
        GuiImage(gui, 1001, 1, 1, icon_path, 1, 1)
    end
end