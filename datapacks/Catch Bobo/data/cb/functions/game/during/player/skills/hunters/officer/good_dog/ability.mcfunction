scoreboard players remove @s goodDog 1
scoreboard players add @s dogDamage 1

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:9.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 10

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:8.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 9

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:7.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 8

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:6.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 7

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:5.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 6

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1,distance=..0.01,nbt={Attributes:[{Base:4.0d,Name:"minecraft:generic.attack_damage"}]}] run attribute @s minecraft:generic.attack_damage base set 5



execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] at @s run playsound minecraft:entity.wolf.whine player @a ~ ~ ~ 1 1

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] at @s run particle minecraft:happy_villager ~ ~0.25 ~ 0.2 0.25 0.2 1 5

execute at @s as @e[type=wolf,tag=dog] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run playsound minecraft:entity.bat.ambient player @a ~ ~ ~ 1.5 0