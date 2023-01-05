scoreboard players remove @s rootkitLifespan 1
scoreboard players operation #rootkitLifespan temp = @s rootkitLifespan
scoreboard players operation #rootkitLifespan1 temp = @s rootkitLifespan
scoreboard players operation #rootkitLifespan temp %= #20 constant
scoreboard players operation #rootkitLifespan1 temp %= #2 constant

execute if score #rootkitLifespan temp matches 0 run scoreboard players operation .search uuid = @s uuidLink
execute if score #rootkitLifespan temp matches 0 as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,distance=..8,predicate=!general:uuid_search,predicate=!general:uuid_link_search] run tag @s add hit
execute if score #rootkitLifespan temp matches 0 as @e[type=#general:everything,tag=hit] run scoreboard players operation @s slowness10 = @s slowness10
execute if score #rootkitLifespan temp matches 0 as @e[type=#general:everything,tag=hit] if score @s slowness10 < .slowness1020t rootkitStats run scoreboard players operation @s slowness10 = .slowness1020t rootkitStats
execute if score #rootkitLifespan temp matches 0 as @e[type=#general:everything,tag=hit] at @s run playsound minecraft:block.grass.break player @a ~ ~ ~ 0.5 2
execute if score #rootkitLifespan temp matches 0 as @e[type=#general:everything,tag=hit] at @s run execute at @s run particle minecraft:block minecraft:mud ~ ~1 ~ 0.2 0.5 0.2 10 10
execute if score #rootkitLifespan temp matches 0 run function hunter:hacker/rootkit/particles
execute if score #rootkitLifespan temp matches 0 run playsound minecraft:block.bamboo.break player @a ~ ~ ~ 1 1.5
execute if score #rootkitLifespan temp matches 0 run tag @e[type=#general:everything] remove hit

particle dust 0.400 0.400 0.400 1 ~ ~ ~ 0 0 0 1 0 force


execute if score #rootkitLifespan1 temp matches 1 run tp ^ ^ ^0.5
execute if score #rootkitLifespan1 temp matches 1 unless block ^ ^ ^1.0 #general:dashables run function hunter:hacker/bounce/xy

execute positioned ~ ~-1 ~ run tp @e[type=minecraft:armor_stand,tag=rootkit,tag=linked,sort=nearest,limit=1] ~ ~-1 ~

execute if score @s rootkitLifespan matches ..0 run kill @e[type=minecraft:armor_stand,tag=rootkit,tag=linked,sort=nearest,limit=1]
execute if score @s rootkitLifespan matches ..0 run kill @s