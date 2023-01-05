function cb:random/random
scoreboard players operation @s objectiveM9 = @s randomOutcome


execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM9 = @s objectiveM1 unless score @s objectiveM9 = @s objectiveM2 unless score @s objectiveM9 = @s objectiveM3 unless score @s objectiveM9 = @s objectiveM4 unless score @s objectiveM9 = @s objectiveM5 unless score @s objectiveM9 = @s objectiveM6 unless score @s objectiveM9 = @s objectiveM7 unless score @s objectiveM9 = @s objectiveM8 run scoreboard players remove @s objectiveMC 1

execute if score constant sEnableBT matches 0 unless score @s objectiveM2 matches 16 unless score @s objectiveMC matches ..0 unless score @s objectiveM9 = @s objectiveM1 unless score @s objectiveM9 = @s objectiveM2 unless score @s objectiveM9 = @s objectiveM3 unless score @s objectiveM9 = @s objectiveM4 unless score @s objectiveM9 = @s objectiveM5 unless score @s objectiveM9 = @s objectiveM6 unless score @s objectiveM9 = @s objectiveM7 unless score @s objectiveM9 = @s objectiveM8 run function cb:game/pre/player/objectives/medium/10

execute if score constant sEnableBT matches 0 if score @s objectiveM9 matches 16 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM4 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM5 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM6 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9
execute if score @s objectiveM9 = @s objectiveM8 run function cb:game/pre/player/objectives/medium/9




execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM9 = @s objectiveM1 unless score @s objectiveM9 = @s objectiveM2 unless score @s objectiveM9 = @s objectiveM3 unless score @s objectiveM9 = @s objectiveM4 unless score @s objectiveM9 = @s objectiveM5 unless score @s objectiveM9 = @s objectiveM6 unless score @s objectiveM9 = @s objectiveM7 unless score @s objectiveM9 = @s objectiveM8 run scoreboard players remove @s objectiveMC 1

execute if score constant sEnableBT matches 1 unless score @s objectiveMC matches ..0 unless score @s objectiveM9 = @s objectiveM1 unless score @s objectiveM9 = @s objectiveM2 unless score @s objectiveM9 = @s objectiveM3 unless score @s objectiveM9 = @s objectiveM4 unless score @s objectiveM9 = @s objectiveM5 unless score @s objectiveM9 = @s objectiveM6 unless score @s objectiveM9 = @s objectiveM7 unless score @s objectiveM9 = @s objectiveM8 run function cb:game/pre/player/objectives/medium/10

execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM1 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM2 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM3 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM4 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM5 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM6 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM7 run function cb:game/pre/player/objectives/medium/9
execute if score constant sEnableBT matches 1 if score @s objectiveM9 = @s objectiveM8 run function cb:game/pre/player/objectives/medium/9