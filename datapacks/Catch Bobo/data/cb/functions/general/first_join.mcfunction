scoreboard players set @s playTime 0
title @s title [{"text":"xx","obfuscated":true},{"text":" Welcome to ","color":"white","obfuscated":false},{"text":" Catch Bobo ","color":"gold","bold":true,"obfuscated":false},{"text":"xx","obfuscated":true}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
scoreboard players reset @s leaveGame

clear @s
gamemode adventure @s
team join Lobby @s
tp @s 0 54 0

scoreboard players set @s died 0