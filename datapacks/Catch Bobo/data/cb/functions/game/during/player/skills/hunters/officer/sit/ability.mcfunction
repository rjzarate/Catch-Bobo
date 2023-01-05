execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] store result score @s dogHealth run data get entity @s Health 100


execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 if entity @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Sitting:0b}] run scoreboard players set @s sit 0
execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 if entity @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Sitting:1b}] run scoreboard players set @s sit 1

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 if entity @e[type=wolf,tag=dog,sort=nearest,limit=1] run scoreboard players add @s sit 1

execute if score @s sit matches 2.. run scoreboard players set @s sit 0





execute if score @s sit matches 0 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run data modify entity @s Sitting set value 0b

execute if score @s sit matches 1 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run data modify entity @s Sitting set value 1b

execute if score @s dogDamage matches 1 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 5

execute if score @s dogDamage matches 2 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 6

execute if score @s dogDamage matches 3 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 7

execute if score @s dogDamage matches 4 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 8

execute if score @s dogDamage matches 5 at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 9

execute if score @s dogDamage matches 6.. at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 10

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] store result entity @s Health float 0.01 run scoreboard players get @s dogHealth

execute at @s as @e[type=wolf,tag=dog] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run playsound minecraft:entity.bat.ambient player @a ~ ~ ~ 1.5 0