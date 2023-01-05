function cb:random/random
scoreboard players operation @s objectiveE5 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE5 = @s objectiveE1 unless score @s objectiveE5 = @s objectiveE2 unless score @s objectiveE5 = @s objectiveE3 unless score @s objectiveE5 = @s objectiveE4 run scoreboard players remove @s objectiveEC 1
execute unless score @s objectiveEC matches ..0 unless score @s objectiveE5 = @s objectiveE1 unless score @s objectiveE5 = @s objectiveE2 unless score @s objectiveE5 = @s objectiveE3 unless score @s objectiveE5 = @s objectiveE4 run function cb:game/pre/player/objectives/easy/6


execute if score @s objectiveE5 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/5
execute if score @s objectiveE5 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/5
execute if score @s objectiveE5 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/5
execute if score @s objectiveE5 = @s objectiveE4 run function cb:game/pre/player/objectives/easy/5