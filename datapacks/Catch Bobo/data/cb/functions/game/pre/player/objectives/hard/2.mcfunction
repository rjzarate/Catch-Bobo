function cb:random/random
scoreboard players operation @s objectiveH2 = @s randomOutcome

execute unless score @s objectiveHC matches ..0 unless score @s objectiveH2 = @s objectiveH1 run scoreboard players remove @s objectiveHC 1
execute unless score @s objectiveHC matches ..0 unless score @s objectiveH2 = @s objectiveH1 run function cb:game/pre/player/objectives/hard/3

execute if score @s objectiveH2 = @s objectiveH1 run function cb:game/pre/player/objectives/hard/2