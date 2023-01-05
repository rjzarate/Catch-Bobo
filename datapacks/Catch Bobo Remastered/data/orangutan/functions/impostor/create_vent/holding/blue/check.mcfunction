scoreboard players operation .search uuidLink = @s uuid
scoreboard players set #distance temp 30

execute as @e[type=minecraft:turtle,tag=vent,scores={ventOldest=1},predicate=general:uuid_link_search,tag=blue] run tag @s add createVentParticles

execute at @s anchored eyes positioned ^ ^-0.2 ^ if entity @e[type=minecraft:turtle,tag=vent,tag=createVentParticles] facing entity @e[type=minecraft:turtle,tag=vent,tag=createVentParticles] eyes positioned ^ ^ ^2 run function orangutan:impostor/create_vent/holding/blue/particles

tag @e[type=minecraft:turtle,tag=createVentParticles] remove createVentParticles