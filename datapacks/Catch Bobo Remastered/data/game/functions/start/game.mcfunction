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
	execute if score .fruitsOnField gameStats matches 31.. run spreadplayers 96 -288 5 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 26..30 run spreadplayers 96 -288 10 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 20..25 run spreadplayers 96 -288 15 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 15..19 run spreadplayers 96 -288 20 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches 10..14 run spreadplayers 96 -288 25 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]
	execute if score .fruitsOnField gameStats matches ..9 run spreadplayers 96 -288 30 175 under 80 false @e[type=minecraft:item,tag=fruit,tag=new]

	tag @e[type=item,tag=fruit,tag=new] remove new

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
title @a[team=Hunters] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
title @a[team=Orangutans,tag=bobo] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Collect enough ","color":"aqua"},{"text":"fruits","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
title @a[team=Orangutans,tag=!bobo] subtitle ["",{"text":"Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.","color":"aqua"}]

tellraw @a [{"text":"\nThe ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]
tellraw @a[team=Hunters] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
tellraw @a[team=Orangutans,tag=bobo] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Collect enough ","color":"aqua"},{"text":"fruits","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
tellraw @a[team=Orangutans,tag=!bobo] [{"text":"Main Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.","color":"aqua"}]
playsound minecraft:entity.wither.spawn player @a -78 37 -115 200 1

#destroys glass wall
	fill -67 37 -131 -67 46 -130 minecraft:air destroy
	fill -66 37 -130 -66 46 -129 minecraft:air destroy
	fill -65 37 -129 -65 46 -128 minecraft:air destroy
	fill -64 37 -128 -64 46 -127 minecraft:air destroy
	fill -63 37 -127 -63 46 -126 minecraft:air destroy
	fill -62 37 -126 -62 46 -126 minecraft:air destroy

#ff enabled
	scoreboard players enable @a[team=Hunters] ff
	scoreboard players enable @a[team=Orangutans] ff