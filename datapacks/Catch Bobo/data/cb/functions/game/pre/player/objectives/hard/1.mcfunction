function cb:random/random
scoreboard players remove @s objectiveHC 1
scoreboard players operation @s objectiveH1 = @s randomOutcome
execute if score @s objectiveHC matches 1.. run function cb:game/pre/player/objectives/hard/2