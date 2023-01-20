scoreboard players add @s bananaBladeKillCount 1

execute if score @s bananaBladeKillCount matches 1 run attribute @s minecraft:generic.attack_speed modifier add 0-0-0-1-1 banana_blade_kill_1 .30 add
execute if score @s bananaBladeKillCount matches 2 run attribute @s minecraft:generic.attack_speed modifier add 0-0-0-1-2 banana_blade_kill_2 .30 add
execute if score @s bananaBladeKillCount matches 3 run attribute @s minecraft:generic.attack_speed modifier add 0-0-0-1-3 banana_blade_kill_3 .30 add

scoreboard players reset @s bananaBladeKill

playsound minecraft:entity.turtle.egg_crack player @a ~ ~ ~ 1 1.5
execute if score @s bananaBladeKillCount matches 1.. run particle minecraft:item minecraft:golden_sword{CustomModelData:1} ~ ~1 ~ 0.25 0.2 0.25 0.25 15