#reset game scores
	scoreboard players set .gameStart game 0
	scoreboard players set .teamPhase game 1
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#teleports players
	tp @a -99.5 59 23.5 -90 0

#removes tags
	tag @a remove ready

#tellraw and sound
	title @a times 0 100 20
	title @a subtitle {"text":"Stand on the corresponding color to choose.","color":"yellow","italic":true}
	title @a title {"text":"Choose Your Team!","bold":true,"color":"white"}
	tellraw @a ["",{"text":"\n"},{"text":"Choose Your Team!\n","bold":true,"color":"white"},{"text":"Stand on the corresponding color to choose.","color":"yellow","italic":true}]
	playsound minecraft:block.note_block.pling record @a -99.5 59 23.5 2 2

#summons area effect clouds
	kill @e[type=minecraft:area_effect_cloud,tag=chooseTeamInfo]
	summon minecraft:area_effect_cloud -94 60 19 {Tags:["chooseTeamInfo"],CustomNameVisible:1b,Duration:12000,CustomName:'{"text":"Team Orangutans","color":"gold","bold":true,"italic":false}'}

	summon minecraft:area_effect_cloud -94 60 27 {Tags:["chooseTeamInfo"],CustomNameVisible:1b,Duration:12000,CustomName:'{"text":"Team Hunters","color":"dark_red","bold":true,"italic":false}'}

	summon minecraft:area_effect_cloud -90 60 23 {Tags:["chooseTeamInfo"],CustomNameVisible:1b,Duration:12000,CustomName:'{"text":"Spectate","color":"gray","bold":true,"italic":false}'}