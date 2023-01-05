effect give @s speed 10 0
effect give @s regeneration 10 0
execute at @s run playsound minecraft:entity.generic.drink player @a ~ ~ ~ 1 1
scoreboard players set @s pepsiNoCan 1
clear @s minecraft:warped_fungus_on_a_stick{pepsiCan:1} 1