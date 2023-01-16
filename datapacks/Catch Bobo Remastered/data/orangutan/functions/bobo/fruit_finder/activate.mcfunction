#updates compass
	execute as @e[type=minecraft:item,tag=fruit,sort=nearest,limit=1] store result score #Pos0 temp run data get entity @s Pos[0] 1
	execute as @e[type=minecraft:item,tag=fruit,sort=nearest,limit=1] store result score #Pos2 temp run data get entity @s Pos[2] 1
	execute store result storage minecraft:compass LoadstonePos.X int 1 run scoreboard players get #Pos0 temp
	execute store result storage minecraft:compass LoadstonePos.Z int 1 run scoreboard players get #Pos2 temp

	item modify entity @s weapon.mainhand kit:compass/loadstone

#actionbar
	title @s actionbar ["",{"text":"Tracking","bold":true,"color":"green"},{"text":" "},{"text":"| ","bold":true},{"text":"Fruits: ","bold":true,"color":"yellow"},{"score":{"name":".fruitsCollected","objective":"game"},"italic":true,"color":"#D4D439"},{"text":"/","italic":true,"color":"#D4D439"},{"score":{"name":".fruitRequirement","objective":"gameStats"},"italic":true,"color":"#D4D439"}]
	execute unless entity @e[type=minecraft:item,tag=fruit] run title @s actionbar ["",{"text":"No Fruits","bold":true,"color":"red"},{"text":" "},{"text":"| ","bold":true},{"text":"Fruits: ","bold":true,"color":"yellow"},{"score":{"name":".fruitsCollected","objective":"game"},"italic":true,"color":"#D4D439"},{"text":"/","italic":true,"color":"#D4D439"},{"score":{"name":".fruitRequirement","objective":"gameStats"},"italic":true,"color":"#D4D439"}]

#particles
	scoreboard players set #distance temp 30
	execute at @s anchored eyes positioned ^ ^-0.2 ^ if entity @e[type=minecraft:item,tag=fruit] facing entity @e[type=minecraft:item,tag=fruit,sort=nearest,limit=1] eyes positioned ^ ^ ^2 run function orangutan:bobo/fruit_finder/particles