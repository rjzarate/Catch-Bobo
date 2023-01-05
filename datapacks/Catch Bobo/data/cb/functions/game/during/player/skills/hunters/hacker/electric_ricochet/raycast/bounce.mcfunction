scoreboard players remove @s eRicochetB 1

playsound minecraft:item.shield.block player @a ~ ~ ~ 0.5 2
execute unless block ~0.5 ~ ~ #cb:dashables store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ #cb:dashables store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ #cb:dashables store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ #cb:dashables store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 #cb:dashables run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/z
execute unless block ~ ~ ~-0.5 #cb:dashables run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/z

execute rotated as @s run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/loop