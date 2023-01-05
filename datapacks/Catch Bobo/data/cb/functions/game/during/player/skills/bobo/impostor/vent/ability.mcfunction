scoreboard players remove @s vent 1


execute if score @s blueVentNear matches 1 if score @s blueVentCount matches 2 at @s as @e[type=slime,tag=blueVent,sort=nearest,distance=6..] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run tp @p @s

execute if score @s blueVentNear matches 1 if score @s blueVentCount matches 2 at @s as @e[type=slime,tag=blueVent] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run particle dust 0.471 0.471 0.471 1 ~ ~1 ~ 0.2 0.5 0.2 1 7 normal
execute if score @s blueVentNear matches 1 if score @s blueVentCount matches 2 at @s as @e[type=slime,tag=blueVent] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1.5 0






execute if score @s redVentNear matches 1 if score @s redVentCount matches 2 at @s as @e[type=slime,tag=redVent,sort=nearest,distance=6..] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run tp @p @s

execute if score @s redVentNear matches 1 if score @s redVentCount matches 2 at @s as @e[type=slime,tag=redVent] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run particle dust 0.471 0.471 0.471 1 ~ ~1 ~ 0.2 0.5 0.2 1 7 normal
execute if score @s redVentNear matches 1 if score @s redVentCount matches 2 at @s as @e[type=slime,tag=redVent] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1.5 0