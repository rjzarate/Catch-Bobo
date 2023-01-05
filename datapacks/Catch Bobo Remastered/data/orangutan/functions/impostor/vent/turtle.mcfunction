scoreboard players remove @s[tag=!timeStoppee] ventLifespan 1

kill @e[type=minecraft:turtle,tag=vent,scores={ventLifespan=..0}]

execute if predicate general:no_absorption at @s run function orangutan:impostor/vent/destroy