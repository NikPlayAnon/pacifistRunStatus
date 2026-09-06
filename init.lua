--print("MY MOD INIT LOADED")
dofile_once("mods/pacifistRunStatus/files/scripts/pacifist_run_status.lua")

function OnPlayerSpawned(player_entity)
    GamePrint("MY MOD IS WORKING")
    -- PacifistRunStatusTest(player_entity)
end

function OnWorldPreUpdate()
    if GameGetFrameNum() % 20 == 0 then
        PacifistRunStatusTest(player_entity)
    end
end