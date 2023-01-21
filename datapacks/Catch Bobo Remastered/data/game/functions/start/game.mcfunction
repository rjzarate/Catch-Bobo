#game scores
	scoreboard players set .gameStart game 1
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 1
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#summons fruits
	scoreboard players operation #fruitsOnField game = .fruitsOnField gameStats
	function game:fruit/summon

#teleports fruits
	execute if score .fruitsOnField gameStats matches 31.. run spreadplayers 96 -288 6 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 26..30 run spreadplayers 96 -288 12 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 20..25 run spreadplayers 96 -288 18 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 15..19 run spreadplayers 96 -288 24 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches 10..14 run spreadplayers 96 -288 30 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]
	execute if score .fruitsOnField gameStats matches ..9 run spreadplayers 96 -288 36 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=!teleported]

	tag @e[type=item,tag=fruit] remove new
	tag @e[type=item,tag=fruit] add teleported

#bossbar
	bossbar set minecraft:timer name {"text":"Time Remaining","color":"green","bold":true,"italic":false}
	execute store result bossbar minecraft:timer max run scoreboard players get .gameTimer gameStats
	bossbar set minecraft:timer color green
	bossbar set minecraft:timer style progress
	bossbar set minecraft:timer players @a
	bossbar set minecraft:timer visible true

#tellraw
title @a times 10 60 20
title @a title ["",{"text":"xx","obfuscated":true,"color":"yellow"},{"text":"","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"},{"text":"xx","obfuscated":true,"color":"yellow"}]
title @a[tag=hunter] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
title @a[tag=orangutan,tag=bobo] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Collect enough ","color":"aqua"},{"text":"fruits","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
title @a[tag=orangutan,tag=!bobo] subtitle ["",{"text":"Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.","color":"aqua"}]

tellraw @a [{"text":"\nThe ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]
tellraw @a[tag=hunter] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
#if bobo glows when collect fruits
	execute if score .endGlowing matches 0 run tellraw @a[tag=hunter] [,{"text":" "},{"text":"Bobo","bold":true,"color":"gold"},{"text":"will ","color":"aqua"},{"text":"NOT glow","color":"light_purple"},{"text":" when they collect ","color":"aqua"},{"text":"fruits","color":"light_purple"}{"text":". Be on the lookout!","color":"aqua"}]
	execute if score .endGlowing matches 1 run tellraw @a[tag=hunter] [,{"text":" "},{"text":"Bobo","bold":true,"color":"gold"},{"text":"will ","color":"aqua"},{"text":"glow","color":"light_purple"},{"text":" when they collect ","color":"aqua"},{"text":"fruits","color":"light_purple"}{"text":". Be on the lookout!","color":"aqua"}]
#tells bobo and orangutans they have a tracker for fruits and bobo
	tellraw @a[tag=orangutan,tag=bobo] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Collect enough ","color":"aqua"},{"text":"fruits","bold":true,"color":"yellow"},{"text":".\n A ","color":"aqua"},{"text":"Fruit Finder","bold":true,"color":"gold"},{"text":" was given to you to find fruits.","color":"aqua"}]
	tellraw @a[tag=orangutan,tag=!bobo] [{"text":"Main Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.\n A ","color":"aqua"},{"text":"Bobo Tracker","bold":true,"color":"gold"},{"text":" was given to you to find ","color":"aqua"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
playsound minecraft:entity.wither.spawn player @a -78 37 -115 200 1

#destroys glass wall
	fill -67 37 -131 -67 46 -130 minecraft:air destroy
	fill -66 37 -130 -66 46 -129 minecraft:air replace
	fill -65 37 -129 -65 46 -128 minecraft:air destroy
	fill -64 37 -128 -64 46 -127 minecraft:air destroy
	fill -63 37 -127 -63 46 -126 minecraft:air replace
	fill -62 37 -126 -62 46 -126 minecraft:air destroy

#ff enabled
	scoreboard players enable @a[tag=hunter] ff
	scoreboard players enable @a[tag=orangutan] ff