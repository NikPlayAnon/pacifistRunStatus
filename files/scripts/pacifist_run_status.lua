dofile_once("data/scripts/lib/utilities.lua")
-- dofile_once("data/scripts/magic/fungal_shift.lua")


function PacifistRunStatusTest(player_entity)
    local x, y = EntityGetTransform( entity_id );
    local enemies_killed = tonumber( StatsGetValue("enemies_killed") );

    if enemies_killed > 0 then
        GamePrintImportant("you are a monster ","enemy was killed by you")
    end
end