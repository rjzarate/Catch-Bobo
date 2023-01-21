scoreboard players add .preset gameStats 1
execute if score .preset gameStats matches 5.. run scoreboard players set .preset gameStats 1

#changes game settings
	execute if score .preset gameStats matches 1 run function game:preset/1regular
	execute if score .preset gameStats matches 2 run function game:preset/2no_glow
	execute if score .preset gameStats matches 3 run function game:preset/3rapid
	execute if score .preset gameStats matches 4 run function game:preset/4hide

#area effect cloud
	kill @e[type=minecraft:area_effect_cloud,tag=presetInfo]
	execute if score .preset gameStats matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lobbyInfo","presetInfo"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regular","color":"green","bold":true,"italic":false}'}
	execute if score .preset gameStats matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lobbyInfo","presetInfo"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No Glow","color":"green","bold":true,"italic":false}'}
	execute if score .preset gameStats matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lobbyInfo","presetInfo"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Rapid","color":"green","bold":true,"italic":false}'}
	execute if score .preset gameStats matches 4 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lobbyInfo,"presetInfo"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hide & Seek","color":"green","bold":true,"italic":false}'}