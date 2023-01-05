function cb:random/random
scoreboard players operation @s objectiveE12 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE12 = @s objectiveE1 unless score @s objectiveE12 = @s objectiveE2 unless score @s objectiveE12 = @s objectiveE3 unless score @s objectiveE12 = @s objectiveE4 unless score @s objectiveE12 = @s objectiveE5 unless score @s objectiveE12 = @s objectiveE6 unless score @s objectiveE12 = @s objectiveE7 unless score @s objectiveE12 = @s objectiveE8 unless score @s objectiveE12 = @s objectiveE9 unless score @s objectiveE12 = @s objectiveE10 unless score @s objectiveE12 = @s objectiveE11 run scoreboard players remove @s objectiveEC 1


execute if score @s objectiveE12 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE4 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE5 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE6 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE7 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE7 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE8 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE9 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE10 run function cb:game/pre/player/objectives/easy/12
execute if score @s objectiveE12 = @s objectiveE11 run function cb:game/pre/player/objectives/easy/12