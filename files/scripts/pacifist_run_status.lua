dofile_once("data/scripts/lib/utilities.lua")
-- dofile_once("data/scripts/magic/fungal_shift.lua")


function PacifistRunStatusTest(player_entity)
    local x, y = EntityGetTransform(player_entity)
    local enemies_killed = tonumber( StatsGetValue("enemies_killed") );

    if enemies_killed > 0 then
        GamePrintImportant("you are a monster ","enemy was killed by you")
        pacifist_run_is_failed=true
        
        local entity_id = GetUpdatedEntityID()
        local pos_x, pos_y = EntityGetTransform( entity_id )

        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", pos_x, pos_y )
        
        GamePrint("done")
    end
end