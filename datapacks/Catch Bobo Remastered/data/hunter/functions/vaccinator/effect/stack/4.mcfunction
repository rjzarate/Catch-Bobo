scoreboard players set in math 1
scoreboard players set in1 math 5
function math:rng/range
scoreboard players operation .effect5 vaccinatorEffect = out math

execute if score .effect5 vaccinatorEffect = .effect1 vaccinatorEffect run function hunter:vaccinator/effect/stack/4
execute if score .effect5 vaccinatorEffect = .effect2 vaccinatorEffect run function hunter:vaccinator/effect/stack/4
execute if score .effect5 vaccinatorEffect = .effect3 vaccinatorEffect run function hunter:vaccinator/effect/stack/4
execute if score .effect5 vaccinatorEffect = .effect4 vaccinatorEffect run function hunter:vaccinator/effect/stack/4