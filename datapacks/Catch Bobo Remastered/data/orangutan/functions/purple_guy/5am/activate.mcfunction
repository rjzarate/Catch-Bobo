function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
#scoreboard players operation @s 12am5amCD = .cooldown stats

scoreboard players operation .search uuidLink = @s uuid
scoreboard players set #teleport temp 0

execute as @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search,sort=random] run function orangutan:purple_guy/5am/teleport


#sound and visual
	particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
	playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.5
	execute if entity @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search,sort=random] as @a[tag=orangutan,tag=Bobo,gamemode=!spectator] at @s run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
	execute as @a[tag=orangutan,tag=Bobo,gamemode=!spectator] at @s run playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.5