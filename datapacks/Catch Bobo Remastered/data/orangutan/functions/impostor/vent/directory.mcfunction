tag @s add mainVent

	##for shared venting
		scoreboard players operation .search uuidLink = @s uuidLink

execute if entity @s[tag=red] unless score @s ventOldest = @e[type=minecraft:turtle,tag=vent,tag=red,tag=!mainVent,predicate=general:uuid_link_search,limit=1] ventOldest at @e[type=minecraft:turtle,tag=vent,tag=red,tag=!mainVent,predicate=general:uuid_link_search,limit=1] run function orangutan:impostor/vent/activate

execute if entity @s[tag=blue] unless score @s ventOldest = @e[type=minecraft:turtle,tag=vent,tag=blue,tag=!mainVent,predicate=general:uuid_link_search,limit=1] ventOldest at @e[type=minecraft:turtle,tag=vent,tag=blue,tag=!mainVent,predicate=general:uuid_link_search,limit=1] run function orangutan:impostor/vent/activate

execute if entity @s[tag=yellow] unless score @s ventOldest = @e[type=minecraft:turtle,tag=vent,tag=yellow,tag=!mainVent,predicate=general:uuid_link_search,limit=1] ventOldest at @e[type=minecraft:turtle,tag=vent,tag=yellow,tag=!mainVent,predicate=general:uuid_link_search,limit=1] run function orangutan:impostor/vent/activate

execute if entity @s[tag=green] unless score @s ventOldest = @e[type=minecraft:turtle,tag=vent,tag=green,tag=!mainVent,predicate=general:uuid_link_search,limit=1] ventOldest at @e[type=minecraft:turtle,tag=vent,tag=green,tag=!mainVent,predicate=general:uuid_link_search,limit=1] run function orangutan:impostor/vent/activate

tag @s remove mainVent