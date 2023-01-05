function cb:random/random
scoreboard players operation @s objectiveM8 = @s randomOutcome


execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM8 = @s objectiveM1 unless score @s objectiveM8 = @s objectiveM2 unless score @s objectiveM8 = @s objectiveM3 unless score @s objectiveM8 = @s objectiveM4 unless score @s objectiveM8 = @s objectiveM5 unless score @s objectiveM8 = @s objectiveM6 unless score @s objectiveM8 = @s objectiveM7 run scoreboard players remove @s objectiveMC 1

execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM8 = @s objectiveM1 unless score @s objectiveM8 = @s objectiveM2 unless score @s objectiveM8 = @s objectiveM3 unless score @s objectiveM8 = @s objectiveM4 unless score @s objectiveM8 = @s objectiveM5 unless score @s objectiveM8 = @s objectiveM6 unless score @s objectiveM8 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9

execute if score constant sEnableBT matches 0 if score @s objectiveM8 matches 16 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM4 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM5 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM6 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 0 if score @s objectiveM8 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/8



execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM8 = @s objectiveM1 unless score @s objectiveM8 = @s objectiveM2 unless score @s objectiveM8 = @s objectiveM3 unless score @s objectiveM8 = @s objectiveM4 unless score @s objectiveM8 = @s objectiveM5 unless score @s objectiveM8 = @s objectiveM6 unless score @s objectiveM8 = @s objectiveM7 run scoreboard players remove @s objectiveMC 1

execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM8 = @s objectiveM1 unless score @s objectiveM8 = @s objectiveM2 unless score @s objectiveM8 = @s objectiveM3 unless score @s objectiveM8 = @s objectiveM4 unless score @s objectiveM8 = @s objectiveM5 unless score @s objectiveM8 = @s objectiveM6 unless score @s objectiveM8 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9

execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM4 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM5 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM6 run function cb:game/pre/player/objectives/medium/8
execute if score constant sEnableBT matches 1 if score @s objectiveM8 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/8