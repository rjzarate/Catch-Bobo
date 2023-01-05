function cb:random/random

execute if score constant sEnableBT matches 0 run scoreboard players operation @s objectiveM1 = @s randomOutcome
execute if score constant sEnableBT matches 0 unless score @s objectiveM1 matches 16 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 0 unless score @s objectiveM1 matches 16 run function cb:game/pre/player/objectives/medium/2
execute if score constant sEnableBT matches 0 if score @s objectiveM1 matches 16 run function cb:game/pre/player/objectives/medium/1


execute if score constant sEnableBT matches 1 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 1 run scoreboard players operation @s objectiveM1 = @s randomOutcome
execute if score constant sEnableBT matches 1 run function cb:game/pre/player/objectives/medium/2