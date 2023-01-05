function cb:game/during/player/skills/main
function cb:game/during/player/objectives/main
execute if score constant gameInProgress matches 1 run function cb:game/post/winner/kill/check
tag @a remove randomClassGiven
function cb:fillers/main
function cb:general/main
execute as @a run function cb:random/random
scoreboard players reset @a carrotOnAStick
