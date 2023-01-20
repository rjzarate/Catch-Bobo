scoreboard players remove @s sabotageDuration 1

#for sabotage lights
	execute if score @s sabotageDuration matches 1.. run scoreboard players operation .search uuidLink = @s uuid
	execute if score @s sabotageDuration matches 1.. if entity @e[type=minecraft:ocelot,tag=sabotage,tag=lights,predicate=general:uuid_link_search] as @a[tag=hunter,gamemode=!spectator] unless score @s darkness matches 1.. run scoreboard players set @s darkness 2
	execute if score @s sabotageDuration matches 1.. unless entity @e[type=minecraft:ocelot,tag=sabotage,predicate=general:uuid_link_search] run scoreboard players set @s sabotageDuration 0

#kills ocelots
	execute if score @s sabotageDuration matches 1 run kill @e[type=minecraft:ocelot,tag=sabotage,predicate=general:uuid_link_search]

#adds grayscale and removes glint
	execute if score @s sabotageDuration matches ..0 run execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["sabotage"]}}].Slot
	execute if score @s sabotageDuration matches ..0 run function general:animate/add/directory
	execute if score @s sabotageDuration matches ..0 run function general:glint/remove/directory
	execute if score @s sabotageDuration matches ..0 run scoreboard players reset @s sabotageDuration