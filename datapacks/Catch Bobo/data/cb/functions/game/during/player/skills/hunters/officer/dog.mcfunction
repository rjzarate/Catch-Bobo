scoreboard players set @s dogAlive 0

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 run scoreboard players set @s dogAlive 1

execute if score @s dogAlive matches 1 run attribute @s minecraft:generic.attack_speed base set 4
execute if score @s dogAlive matches 0 run attribute @s minecraft:generic.attack_speed base set 3.5
execute if score @s dogAlive matches 0 unless score @s dogDamage matches 1.. run scoreboard players reset @s dogDamage

execute unless score @s timeStopTimer matches 1.. as @e[type=wolf,tag=dog,nbt={Sitting:1b}] run effect give @s minecraft:regeneration 1 2