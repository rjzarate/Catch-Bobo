function general:get_stats

scoreboard players remove @s starfruitSwapperTangerineTeleporter 1

particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.5
spreadplayers 96 -288 1 175 under 80 false @s

particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.5

scoreboard players operation .blindness stats *= #20 constant
scoreboard players operation @s blindness = .blindness stats