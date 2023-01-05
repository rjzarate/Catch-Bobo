function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s clickerCD = .cooldown stats

#sitting to scoreboard
	execute store result score #sitting temp run data get entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1] Sitting

execute if score #sitting temp matches 1 run data modify entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1] Sitting set value 0b
execute if score #sitting temp matches 0 run data modify entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1] Sitting set value 1b

#sound
	execute at @s run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 1