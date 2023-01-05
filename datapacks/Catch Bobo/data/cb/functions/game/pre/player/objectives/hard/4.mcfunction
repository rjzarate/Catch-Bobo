function cb:random/random
scoreboard players operation @s objectiveH4 = @s randomOutcome

execute unless score @s objectiveHC matches ..0 unless score @s objectiveH4 = @s objectiveH1 unless score @s objectiveH4 = @s objectiveH2 unless score @s objectiveH4 = @s objectiveH3 run scoreboard players remove @s objectiveHC 1
execute unless score @s objectiveHC matches ..0 unless score @s objectiveH4 = @s objectiveH1 unless score @s objectiveH4 = @s objectiveH2 unless score @s objectiveH4 = @s objectiveH3 run function cb:game/pre/player/objectives/hard/5


execute if score @s objectiveH4 = @s objectiveH1 run function cb:game/pre/player/objectives/hard/4
execute if score @s objectiveH4 = @s objectiveH2 run function cb:game/pre/player/objectives/hard/4
execute if score @s objectiveH4 = @s objectiveH3 run function cb:game/pre/player/objectives/hard/4