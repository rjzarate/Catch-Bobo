scoreboard players set in math 1
scoreboard players set in1 math 5
function math:rng/range
scoreboard players operation .effect4 vaccinatorEffect = out math

execute if score .effect4 vaccinatorEffect = .effect1 vaccinatorEffect run function hunter:vaccinator/effect/stack/3
execute if score .effect4 vaccinatorEffect = .effect2 vaccinatorEffect run function hunter:vaccinator/effect/stack/3
execute if score .effect4 vaccinatorEffect = .effect3 vaccinatorEffect run function hunter:vaccinator/effect/stack/3