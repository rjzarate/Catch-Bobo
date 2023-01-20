scoreboard players operation @s recallCD = .cooldown20t recallStats
#adds grayscale and remove glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["recall"]}}].Slot
	function general:animate/add/directory
	function general:glint/remove/directory

execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
tp @s @p[tag=bobo,gamemode=!spectator]
execute at @p[tag=bobo,gamemode=!spectator] run playsound minecraft:entity.enderman.teleport player @a[tag=orangutan] ~ ~ ~ 1 1.5
kill @e[type=minecraft:armor_stand,tag=recall]

scoreboard players reset @s recallChargeUp