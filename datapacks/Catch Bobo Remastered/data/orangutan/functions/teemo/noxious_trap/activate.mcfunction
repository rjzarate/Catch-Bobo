function general:get_stats
scoreboard players remove @s noxiousTrapAmmo 1
execute if score @s noxiousTrapAmmo < .maxAmmo noxiousTrapStats unless score @s noxiousTrapCD matches 1.. run scoreboard players operation @s noxiousTrapCD += .cooldown20t noxiousTrapStats
#adds grayscale
	execute unless score @s noxiousTrapAmmo matches 1.. run function general:animate/add/selected_item


execute at @s run summon minecraft:slime ~ ~ ~ {Silent:1b,Invulnerable:0b,Health:1f,CustomNameVisible:0b,Team:"Orangutans",NoAI:1b,Size:0,Tags:["noxiousTrap","noDamage"],Attributes:[{Name:generic.max_health,Base:1}]}
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.05 5
execute as @e[type=minecraft:slime,tag=noxiousTrap,tag=!finished] run scoreboard players operation @s noxiousTrapDuration = .lifespan stats
execute as @e[type=minecraft:slime,tag=noxiousTrap,tag=!finished] run scoreboard players operation @s noxiousTrapDuration *= #20 constant
execute as @e[type=minecraft:slime,tag=noxiousTrap,tag=!finished] run tag @s add finished
execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1