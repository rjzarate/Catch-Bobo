function cb:random/random
scoreboard players operation @s objectiveM2 = @s randomOutcome

execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM2 = @s objectiveM1 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM2 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/3

execute if score constant sEnableBT matches 0 if score @s objectiveM2 matches 16 run function cb:game/pre/player/objectives/medium/2
execute if score constant sEnableBT matches 0 if score @s objectiveM2 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/2



execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM2 = @s objectiveM1 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM2 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/3

execute if score constant sEnableBT matches 1 if score @s objectiveM2 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/2