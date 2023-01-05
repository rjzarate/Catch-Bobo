scoreboard players remove @s indomitableWillDuration 1
execute if score @s indomitableWillDuration matches ..0 run function hunter:guts/indomitable_will/deactivate
execute if score @s indomitableWillDuration matches ..0 run scoreboard players reset @s indomitableWillDuration