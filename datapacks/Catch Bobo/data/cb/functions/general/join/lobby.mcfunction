function cb:reset_player
title @s times 0 100 20
title @s title [{"text":"xx","obfuscated":true},{"text":" Welcome to ","color":"white","obfuscated":false},{"text":"Catch Bobo ","color":"gold","bold":true,"obfuscated":false},{"text":"xx","obfuscated":true}]
title @s subtitle {"text":"Ready up behind you to start a game!","color":"gray"}
tellraw @s [{"text":"Welcome to ","color":"white","obfuscated":false},{"text":"Catch Bobo","color":"gold","bold":true,"obfuscated":false},{"text":"\nReady up behind you to start a game!","color":"gray"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2