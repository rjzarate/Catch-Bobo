execute as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] store result score @s Owner0 run data get entity @s Owner[0]
execute as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] store result score @s Owner1 run data get entity @s Owner[1]
execute as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] store result score @s Owner2 run data get entity @s Owner[2]
execute as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] store result score @s Owner3 run data get entity @s Owner[3]

execute at @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] if score @s UUID0 = @e[type=arrow,nbt={Color:14605868},tag=!gotOwner,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=arrow,nbt={Color:14605868},tag=!gotOwner,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=arrow,nbt={Color:14605868},tag=!gotOwner,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=arrow,nbt={Color:14605868},tag=!gotOwner,sort=nearest,limit=1] Owner3 as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner,sort=nearest,limit=1] run tag @s add uConcoction

execute as @e[type=arrow,nbt={Color:14605868},tag=!gotOwner] run tag @s add gotOwner
