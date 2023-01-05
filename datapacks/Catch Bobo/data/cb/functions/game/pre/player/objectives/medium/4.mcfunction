function cb:random/random
scoreboard players operation @s objectiveM4 = @s randomOutcome


execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM4 = @s objectiveM1 unless score @s objectiveM4 = @s objectiveM2 unless score @s objectiveM4 = @s objectiveM3 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM4 = @s objectiveM1 unless score @s objectiveM4 = @s objectiveM2 unless score @s objectiveM4 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/5

execute if score constant sEnableBT matches 0 if score @s objectiveM4 matches 16 run function cb:game/pre/player/objectives/medium/5
execute if score constant sEnableBT matches 0 if score @s objectiveM4 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/4
execute if score constant sEnableBT matches 0 if score @s objectiveM4 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/4
execute if score constant sEnableBT matches 0 if score @s objectiveM4 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/4




execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM4 = @s objectiveM1 unless score @s objectiveM4 = @s objectiveM2 unless score @s objectiveM4 = @s objectiveM3 run scoreboard players remove @s objectiveMC 1
execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM4 = @s objectiveM1 unless score @s objectiveM4 = @s objectiveM2 unless score @s objectiveM4 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/5


execute if score constant sEnableBT matches 1 if score @s objectiveM4 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/4
execute if score constant sEnableBT matches 1 if score @s objectiveM4 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/4
execute if score constant sEnableBT matches 1 if score @s objectiveM4 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/4