scoreboard players remove @s ee-3Range 1
scoreboard players operation #temp ee-3Iteration = @s ee-3Iteration

scoreboard players operation .search uuid = @s uuidLink
tag @e[team=Hunters,type=minecraft:player,tag=bobaFett,predicate=general:uuid_search,limit=1] add shooter
tag @s add moving

execute positioned ^ ^ ^0.5 run function hunter:boba_fett/ee-3/slowcast/move

tag @s remove moving
tag @a[tag=shooter] remove shooter

execute if score @s ee-3Range matches ..0 run kill @s