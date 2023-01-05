scoreboard players remove @s hP 1
scoreboard players add @s objectiveAbility 1

execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~1 ~ 1 0
execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.05 3
execute at @s run summon item ~ ~1 ~ {Tags:["hP"],Health:1000,PickupDelay:32767,Age:-32768,Item:{id:"minecraft:baked_potato",Count:1b,tag:{Enchantments:[{}]}}}