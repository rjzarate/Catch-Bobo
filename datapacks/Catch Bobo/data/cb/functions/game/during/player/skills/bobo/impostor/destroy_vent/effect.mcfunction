execute at @s as @e[type=slime,tag=vent,distance=..5] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run scoreboard players set @p ventNear 1


execute at @s as @e[type=slime,tag=vent,distance=..5,sort=nearest,limit=1] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 if entity @s[tag=blueVent] run scoreboard players set @p blueVentNear 1

execute at @s as @e[type=slime,tag=vent,distance=..5,sort=nearest,limit=1] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 if entity @s[tag=redVent] run scoreboard players set @p redVentNear 1