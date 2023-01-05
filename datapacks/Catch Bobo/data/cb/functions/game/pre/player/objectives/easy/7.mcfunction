function cb:random/random
scoreboard players operation @s objectiveE7 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE7 = @s objectiveE1 unless score @s objectiveE7 = @s objectiveE2 unless score @s objectiveE7 = @s objectiveE3 unless score @s objectiveE7 = @s objectiveE4 unless score @s objectiveE7 = @s objectiveE5 unless score @s objectiveE7 = @s objectiveE6 run scoreboard players remove @s objectiveEC 1
execute unless score @s objectiveEC matches ..0 unless score @s objectiveE7 = @s objectiveE1 unless score @s objectiveE7 = @s objectiveE2 unless score @s objectiveE7 = @s objectiveE3 unless score @s objectiveE7 = @s objectiveE4 unless score @s objectiveE7 = @s objectiveE5 unless score @s objectiveE7 = @s objectiveE6 run function cb:game/pre/player/objectives/easy/8

execute if score @s objectiveE7 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/7
execute if score @s objectiveE7 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/7
execute if score @s objectiveE7 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/7
execute if score @s objectiveE7 = @s objectiveE4 run function cb:game/pre/player/objectives/easy/7
execute if score @s objectiveE7 = @s objectiveE5 run function cb:game/pre/player/objectives/easy/7
execute if score @s objectiveE7 = @s objectiveE6 run function cb:game/pre/player/objectives/easy/7