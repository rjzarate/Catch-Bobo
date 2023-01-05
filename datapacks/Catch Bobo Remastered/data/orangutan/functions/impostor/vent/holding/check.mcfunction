scoreboard players operation .search uuid = @s uuid
scoreboard players operation .search uuidLink = @s uuid
#scoreboard players set #distance temp 10


execute if entity @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=red,scores={ventOldest=2}] as @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=red] run tag @s add createVentParticles
execute if entity @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=blue,scores={ventOldest=2}] as @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=blue] run tag @s add createVentParticles
execute if entity @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=yellow,scores={ventOldest=2}] as @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=yellow] run tag @s add createVentParticles
execute if entity @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=green,scores={ventOldest=2}] as @e[type=minecraft:turtle,predicate=general:uuid_link_search,tag=green] run tag @s add createVentParticles

execute at @s anchored eyes positioned ^ ^-0.2 ^ as @e[type=minecraft:turtle,tag=vent,tag=red,tag=createVentParticles] facing entity @s eyes positioned ^ ^ ^2 run function orangutan:impostor/vent/holding/particles/red
execute at @s anchored eyes positioned ^ ^-0.2 ^ as @e[type=minecraft:turtle,tag=vent,tag=blue,tag=createVentParticles] facing entity @s eyes positioned ^ ^ ^2 run function orangutan:impostor/vent/holding/particles/blue
execute at @s anchored eyes positioned ^ ^-0.2 ^ as @e[type=minecraft:turtle,tag=vent,tag=yellow,tag=createVentParticles] facing entity @s eyes positioned ^ ^ ^2 run function orangutan:impostor/vent/holding/particles/yellow
execute at @s anchored eyes positioned ^ ^-0.2 ^ as @e[type=minecraft:turtle,tag=vent,tag=green,tag=createVentParticles] facing entity @s eyes positioned ^ ^ ^2 run function orangutan:impostor/vent/holding/particles/green



tag @e[type=minecraft:turtle,tag=createVentParticles] remove createVentParticles