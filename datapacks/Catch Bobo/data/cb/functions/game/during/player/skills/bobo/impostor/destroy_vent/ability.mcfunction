scoreboard players remove @s destroyVent 1
execute if score @s blueVentNear matches 1 run scoreboard players add @s blueVent 1
execute if score @s redVentNear matches 1 run scoreboard players add @s redVent 1


execute at @s as @e[type=slime,tag=vent,sort=nearest,limit=1,distance=..5] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute at @s as @e[type=slime,tag=vent,sort=nearest,limit=1,distance=..5] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 at @s run playsound minecraft:block.stone.break player @a ~ ~ ~ 1 1
execute at @s as @e[type=slime,tag=vent,sort=nearest,limit=1,distance=..5] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run kill @s 