function cb:random/random
scoreboard players operation @s objectiveE4 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE4 = @s objectiveE1 unless score @s objectiveE4 = @s objectiveE2 unless score @s objectiveE4 = @s objectiveE3 run scoreboard players remove @s objectiveEC 1
execute unless score @s objectiveEC matches ..0 unless score @s objectiveE4 = @s objectiveE1 unless score @s objectiveE4 = @s objectiveE2 unless score @s objectiveE4 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/5


execute if score @s objectiveE4 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/4
execute if score @s objectiveE4 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/4
execute if score @s objectiveE4 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/4