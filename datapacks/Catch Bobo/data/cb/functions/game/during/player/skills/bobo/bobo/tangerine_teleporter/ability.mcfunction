scoreboard players remove @s tT 1
scoreboard players add @s objectiveAbility 1

particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.5
spreadplayers 96 -288 1 175 under 80 false @s

particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.5
effect give @s minecraft:blindness 2 0 false