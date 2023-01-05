function cb:reset_player
title @s times 0 100 20
title @s title [{"text":"xx","obfuscated":true},{"text":" Welcome to ","color":"white","obfuscated":false},{"text":"Catch Bobo ","color":"gold","bold":true,"obfuscated":false},{"text":"xx","obfuscated":true}]
title @s subtitle {"text":"Game has already started. You are now spectating.","color":"gray"}
tellraw @s [{"text":"Welcome to ","color":"white","obfuscated":false},{"text":"Catch Bobo","color":"gold","bold":true,"obfuscated":false},{"text":"\nGame has already started. You are now spectating.","color":"gray"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

scoreboard players operation @s gameID = id gameID
gamemode spectator
tp @s 96.0 70 -288.0 180 0