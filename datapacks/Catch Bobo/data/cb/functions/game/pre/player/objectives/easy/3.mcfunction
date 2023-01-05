function cb:random/random
scoreboard players operation @s objectiveE3 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE3 = @s objectiveE1 unless score @s objectiveE3 = @s objectiveE2 run scoreboard players remove @s objectiveEC 1
execute unless score @s objectiveEC matches ..0 unless score @s objectiveE3 = @s objectiveE1 unless score @s objectiveE3 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/4

execute if score @s objectiveE3 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/3
execute if score @s objectiveE3 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/3