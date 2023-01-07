scoreboard players remove @s[tag=!timeStoppee] ventLifespan 1

execute if score @s ventLifespan matches ..0 at @s run kill @e[type=minecraft:armor_stand,tag=vent,limit=1,sort=nearest]
kill @s[scores={ventLifespan=..0}]

execute if predicate general:no_absorption at @s run function orangutan:impostor/vent/destroy