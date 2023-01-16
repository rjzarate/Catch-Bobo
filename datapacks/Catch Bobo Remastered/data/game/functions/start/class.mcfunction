#reset game scores
	scoreboard players set .gameStart game 1
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
		execute as @a positioned -96 59 15 align xyz unless entity @s[dx=4,dy=4,dz=4] positioned -96 58 27 align xyz unless entity @s[dx=4,dy=4,dz=4] run team join Spectators @s
#teleports players
	spreadplayers -97.0 38.0 1 1 under 60 true @a[team=Hunters]
	spreadplayers -94 -3 1 1 under 60 true @a[team=Orangutans]
	tp @a[team=Spectators] -157 61 26 -90 0
#orientates players
	execute as @a[team=Hunters] at @s run tp @s ~ ~ ~ -45 0
	execute as @a[team=Orangutans] at @s run tp @s ~ ~ ~ 180 0

#tag for choosing kit
	tag @a[team=!Spectators] add choosingClass

#tellraw and sound
	title @a times 0 100 20
	title @a subtitle ["",{"text":"Use the [","color":"yellow","italic":true},{"keybind":"key.use","color":"yellow","italic":true},{"text":"] on a sign to choose a class.","color":"yellow","italic":true}]
	title @a title {"text":"Choose Your Class!","bold":true,"color":"white"}
	tellraw @a ["",{"text":"\n"},{"text":"Choose Your Class!\n","bold":true,"color":"white"},{"text":"Use the [","color":"yellow","italic":true},{"keybind":"key.use","color":"yellow","italic":true},{"text":"] on a sign to choose a class.","color":"yellow","italic":true}]
	playsound minecraft:block.note_block.pling record @a -99.5 59 23.5 2 2




#kills area effect clouds
	kill @e[type=minecraft:area_effect_cloud,tag=chooseTeamInfo]

#summons area effect clouds and armor stands
	summon armor_stand -83 60 40 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","jotaro"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Jotaro"}'}
	summon armor_stand -83 60 42 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","jett"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Jett"}'}
	summon armor_stand -83 60 44 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","vaccinator"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Vaccinator"}'}
	summon armor_stand -83 60 46 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","guts"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"guts"}'}
	summon armor_stand -83 60 48 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","officer"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Officer"}'}
	summon armor_stand -83 60 50 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","mori"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Mori"}'}
	summon armor_stand -83 60 52 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","bobaFett"],DisabledSlots:4144959,Rotation:[90F,0F],CustomName:'{"text":"Boba Fett"}'}

	summon armor_stand -84 60 54 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","hacker"],DisabledSlots:4144959,Rotation:[-180F,0F],CustomName:'{"text":"Hacker"}'}
	summon armor_stand -86 60 54 {CustomNameVisible:1b,Team:"Hunters",Invulnerable:1b,ShowArms:1b,Tags:["display","pepsiMan"],DisabledSlots:4144959,Rotation:[-180F,0F],CustomName:'{"text":"Pepsi Man"}'}


	summon armor_stand -94 60 -8 {CustomNameVisible:1b,Team:"Orangutans",Invulnerable:1b,ShowArms:1b,Tags:["display","bobo"],DisabledSlots:4144959,Rotation:[0F,0F],CustomName:'{"text":"Bobo"}'}
	summon armor_stand -97 60 -11 {CustomNameVisible:1b,Team:"Orangutans",Invulnerable:1b,ShowArms:1b,Tags:["display","teemo"],DisabledSlots:4144959,Rotation:[0F,0F],CustomName:'{"text":"Teemo"}'}
	summon armor_stand -95 60 -11 {CustomNameVisible:1b,Team:"Impostor",Invulnerable:1b,ShowArms:1b,Tags:["display","impostor"],DisabledSlots:4144959,Rotation:[0F,0F],CustomName:'{"text":"Impostor"}'}
	summon armor_stand -93 60 -11 {CustomNameVisible:1b,Team:"Purple Guy",Invulnerable:1b,ShowArms:1b,Tags:["display","purpleGuy"],DisabledSlots:4144959,Rotation:[0F,0F],CustomName:'{"text":"Purple Guy"}'}

#gives armor to armor stands
	execute as @e[type=minecraft:armor_stand,tag=display,tag=jotaro] run function kit:jotaro
	execute as @e[type=minecraft:armor_stand,tag=display,tag=jett] run function kit:jett
	execute as @e[type=minecraft:armor_stand,tag=display,tag=vaccinator] run function kit:vaccinator
	execute as @e[type=minecraft:armor_stand,tag=display,tag=guts] run function kit:guts
	execute as @e[type=minecraft:armor_stand,tag=display,tag=officer] run function kit:officer
	execute as @e[type=minecraft:armor_stand,tag=display,tag=mori] run function kit:mori
	execute as @e[type=minecraft:armor_stand,tag=display,tag=bobaFett] run function kit:boba_fett
	execute as @e[type=minecraft:armor_stand,tag=display,tag=hacker] run function kit:hacker
	execute as @e[type=minecraft:armor_stand,tag=display,tag=pepsiMan] run function kit:pepsi_man

	execute as @e[type=minecraft:armor_stand,tag=display,tag=bobo] run function kit:bobo
	execute as @e[type=minecraft:armor_stand,tag=display,tag=teemo] run function kit:teemo
	execute as @e[type=minecraft:armor_stand,tag=display,tag=impostor] run function kit:impostor
	execute as @e[type=minecraft:armor_stand,tag=display,tag=purpleGuy] run function kit:purple_guy