playsound minecraft:item.shield.block player @a ~ ~ ~ 0.5 2
execute unless block ~1.0 ~ ~ #general:dashables store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-1.0 ~ ~ #general:dashables store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~1.0 ~ #general:dashables store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-1.0 ~ #general:dashables store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~1.0 #general:dashables run function hunter:hacker/bounce/z
execute unless block ~ ~ ~-1.0 #general:dashables run function hunter:hacker/bounce/z
