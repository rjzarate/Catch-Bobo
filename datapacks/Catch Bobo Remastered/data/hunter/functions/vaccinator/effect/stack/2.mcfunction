scoreboard players set in math 1
scoreboard players set in1 math 5
function math:rng/range
scoreboard players operation .effect3 vaccinatorEffect = out math

execute if score .effect3 vaccinatorEffect = .effect1 vaccinatorEffect run function hunter:vaccinator/effect/stack/2
execute if score .effect3 vaccinatorEffect = .effect2 vaccinatorEffect run function hunter:vaccinator/effect/stack/2