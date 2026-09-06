
dofile_once("mods/pacifistRunStatus/files/scripts/pacifist_run_status.lua")

pacifist_run_is_failed=false
local pacifist_run_is_failed_frame, pacifist_run_is_failed_last_frame
local gui

function OnPlayerSpawned(player_entity)
end

function OnModInit()
    gui = GuiCreate()
end

function OnWorldPreUpdate()
    if pacifist_run_is_failed==false and GameGetFrameNum() % 20 == 0 then
        PacifistRunStatusTest(player_entity)
    end
end