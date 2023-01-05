function cb:random/random
scoreboard players remove @s objectiveEC 1
scoreboard players operation @s objectiveE1 = @s randomOutcome
function cb:game/pre/player/objectives/easy/2