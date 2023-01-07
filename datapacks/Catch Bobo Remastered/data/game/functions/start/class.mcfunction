#reset game scores
	scoreboard players set .gameStart game 0
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 1
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#makes players teams
	#hunters
		execute positioned -96 58 27 align xyz as @a[dx=4,dy=4,dz=4] run team join Hunters @s
	#orangutans
		execute positioned -96 59 15 align xyz as @a[dx=4,dy=4,dz=4] run team join Orangutans @s
	#spectators
		execute positioned -90 59 22 align xyz as @a[dx=2,dy=4,dz=2] run team join Spectators @s
#teleports players
	tp @a[team=Hunters] 


#tellraw and sound
	title @a times 0 100 20
	title @a subtitle ["",{"text":"Use the [","color":"yellow","italic":true},{"keybind":"key.use","color":"yellow","italic":true},{"text":"] on a sign to choose a class.","color":"yellow","italic":true}]
	title @a title {"text":"Choose Your Class!","bold":true,"color":"white"}
	tellraw @a ["",{"text":"\n"},{"text":"Choose Your Class!\n","bold":true,"color":"white"},{"text":"Use the [","color":"yellow","italic":true},{"keybind":"key.use","color":"yellow","italic":true},{"text":"] on a sign to choose a class.","color":"yellow","italic":true}]
	playsound minecraft:block.note_block.pling record @a -99.5 59 23.5 2 2

#summons area effect clouds
	kill @e[type=minecraft:area_effect_cloud,tag=chooseTeamInfo]
