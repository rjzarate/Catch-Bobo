function cb:random/random
scoreboard players operation @s objectiveE11 = @s randomOutcome

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE11 = @s objectiveE1 unless score @s objectiveE11 = @s objectiveE2 unless score @s objectiveE11 = @s objectiveE3 unless score @s objectiveE11 = @s objectiveE4 unless score @s objectiveE11 = @s objectiveE5 unless score @s objectiveE11 = @s objectiveE6 unless score @s objectiveE11 = @s objectiveE7 unless score @s objectiveE11 = @s objectiveE8 unless score @s objectiveE11 = @s objectiveE9 unless score @s objectiveE11 = @s objectiveE10 run scoreboard players remove @s objectiveEC 1

execute unless score @s objectiveEC matches ..0 unless score @s objectiveE11 = @s objectiveE1 unless score @s objectiveE11 = @s objectiveE2 unless score @s objectiveE11 = @s objectiveE3 unless score @s objectiveE11 = @s objectiveE4 unless score @s objectiveE11 = @s objectiveE5 unless score @s objectiveE11 = @s objectiveE6 unless score @s objectiveE11 = @s objectiveE7 unless score @s objectiveE11 = @s objectiveE8 unless score @s objectiveE11 = @s objectiveE9 unless score @s objectiveE11 = @s objectiveE10 run function cb:game/pre/player/objectives/easy/12

execute if score @s objectiveE11 = @s objectiveE1 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE2 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE3 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE4 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE5 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE6 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE7 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE7 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE8 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE9 run function cb:game/pre/player/objectives/easy/11
execute if score @s objectiveE11 = @s objectiveE10 run function cb:game/pre/player/objectives/easy/11